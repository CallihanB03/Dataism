//
//  InterviewQuestions.swift
//  Dataism
//
//  Created by Callihan Bertley on 10/6/24.
//

import Foundation


class InterviewQuestions {
    var num_questions = 5
    let interviewQuestionsDict = [
        "What are the core phases of the ETL process?": "Data Quality, Data Scalability, Error Handling, Incremental Loading, Data Governance and Security",
        "Describe Data Quality as a core phase of the ETL process": "Implementing data validation checks throughout the data pipeline to ensure data integrity. This involves handling missing values, detecting duplicates, and resolving inconsistencies.",
        "Describe Data Scalability as a core phase of the ETL process.": "As the size of a dataset grows, it's essential that the ETL pipeline can scale. Distributed computing frameworks like Apache Spark enable large datasets to be processed in parallel.",
        "Describe Error Handling as a core phase of the ETL process.": "ETL pipeline should have effective error-handling mechanisms in place. This includes implementing retry logic for transient errors, logging track failures, and alerting to notify the team of issues.",
        "Describe Incremental Loading as a core phase of the ETL process.": "Instead of reprocessing the entire dataset during each ETL run, incremental loading focuses on extracting and transforming only new or modified data. Techniques like Change Data Capture (CDC) or timestamp-based extraction help with implementing incremental loads."
    ]
    
    var questionIndexDict = [
        0: "What are the core phases of the ETL process?",
        1: "Describe Data Quality as a core phase of the ETL process",
        2: "Describe Data Scalability as a core phase of the ETL process.",
        3: "Describe Error Handling as a core phase of the ETL process.",
        4: "Describe Incremental Loading as a core phase of the ETL process."
    ]
    
    func getRandomQuestion() -> String {
        var questionIndex = Int.random(in: 0..<num_questions)
        var question = questionIndexDict[questionIndex]!
        return question
    }
}
