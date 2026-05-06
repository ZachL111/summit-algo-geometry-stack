#use "core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 90; capacity = 84; latency = 15; risk = 23; weight = 10 };;
expect (score signal_case_1 = 152);;
expect (classify signal_case_1 = "review");;
let signal_case_2 = { demand = 65; capacity = 86; latency = 14; risk = 9; weight = 7 };;
expect (score signal_case_2 = 152);;
expect (classify signal_case_2 = "review");;
let signal_case_3 = { demand = 68; capacity = 89; latency = 25; risk = 5; weight = 4 };;
expect (score signal_case_3 = 121);;
expect (classify signal_case_3 = "review");;

#use "review.ml";;
let domain_review = { signal = 41; slack = 32; drag = 16; confidence = 91 };;
expect (review_score domain_review = 157);;
expect (review_lane domain_review = "ship");;
