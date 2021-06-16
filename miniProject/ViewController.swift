//
//  ViewController.swift
//  miniProject
//
//  Created by Duc on 6/15/21.
//

import UIKit
import CalendarKit
import EventKit

class ViewController: DayViewController {
    private let even = EKEventStore()
    override func viewDidLoad() {
        super.viewDidLoad()
        request()
        notiFication()
    }
    func request(){
        even.requestAccess(to: .event){
            success , error in
        }
    }
    func notiFication(){
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(storeChange(_:)),
                                               name: .EKEventStoreChanged,
                                               object: nil)
    }
    
    @objc func storeChange (_ notification :Notification)
    {
        reloadData()
        
        
    }
    override func eventsForDate(_ date: Date) -> [EventDescriptor] {
        let startDate = date
        var oneday = DateComponents()
        oneday.day = 1
        let endDate = calendar.date(byAdding: oneday, to: startDate)!
        let predicate = even.predicateForEvents(withStart: startDate,
                                                end: endDate,
                                                calendars: nil)
        let evenkit = even.events(matching: predicate)
        let calendarKitEvents = evenkit.map { ekEvent -> Event in
            let ckEvent = Event()
            ckEvent.startDate = ekEvent.startDate
            ckEvent.endDate = ekEvent.endDate
            ckEvent.isAllDay = ekEvent.isAllDay
            if let evenColor = ekEvent.calendar.cgColor{
                ckEvent.color = UIColor(cgColor: evenColor)
            }
            return ckEvent
        }
        return calendarKitEvents
    }
    
    
    
}
