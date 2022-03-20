import urllib.request
import json

data = {
        "Inputs": {
                "input1":
                [
                    {
                            'dcf_event_id': "79eda208-6733-4ed8-8b0f-df21d41aced7",   
                            'distribution_date': "8/29/2021 8:38",   
                            'sync_date': "null",   
                            'facility': "Ncotshane Clinic",   
                            'counsellor_name': "Malindi Dlongolo",   
                            'partner': "HST",   
                            'kit_type': "insti",   
                            'gender': "female",   
                            'last_tested': "never",   
                            'consent_for_aviro_to_collect_data': "yes",   
                            'consent_to_obtain_test': "yes",   
                            'appointment': "yes",   
                            'covid_screening_travel': "no",   
                            'covid_screening_contact': "no",   
                            'covid_symptoms': "no_symptoms",   
                            'covid_suspect': "0",   
                            'covid_screening_fever': "no",   
                            'covid_screening_cough': "no",   
                            'covid_screening_sour_threat': "no",   
                            'covid_screening_pain_headache': "no",   
                            'covid_screening_shortness_of_breath': "no",   
                            'oraquick_mouthwash': "null",   
                            'oraquick_dentures': "null",   
                            'oraquick_bleeding_gums': "null",   
                            'hivss_result_confirmation': "null",   
                            'confirmatory_test_done': "null",   
                            'initiation_handover': "null",   
                            'art_initiation': "null",   
                            'art_number_issued': "null",   
                            'not_initiated_reason': "null",   
                            'hprs_engage': "155-439-5283",   
                            'hprs_engage_stripped': "1554395283",   
                            'hprs_ithaka_stripped': "1554395283",   
                            'ithaka_engage_time_diff': "-17",   
                            'similarity': "1",   
                            'matched_type': "Exact",   
                            'uid': "PKm51do3viRB8wXfsFJb",   
                            'language_response': "zulu",   
                            'hprs_ithaka': "155-439-5283",   
                            'results_response': "negative",   
                            'landed': "8/29/2021 8:21",   
                            'agreed_privacy_policy_timestamp': "8/29/2021 8:21",   
                            'kit_type_response': "insti kit",   
                            'kit_type_timestamp': "8/29/2021 8:28",   
                            'registered_timestamp': "8/29/2021 8:21",   
                            'pretest_counselled_timestamp': "8/29/2021 8:33",   
                            'results_positive_entered_timestamp': "8/29/2021 8:34",   
                            'results_negative_entered_timestamp': "8/29/2021 8:34",   
                            'dropp_off_timestamp': "10/26/2021 14:39",   
                            'reminder_response': "TRUE",   
                            'support_response': "null",   
                            'e_I_felt_like_I_could_trust_the_information_in_the_tool': "5",   
                            'e_Overall__I_found_this_tool_easy_to_use': "5",   
                            'e_I_would_recommend_self_testing_to_others': "5",   
                            'e_Overall__I_found_the_self_test_easy_to_conduct': "5",   
                            'e_Overall__I_found_the_information_in_this_tool_is_useful': "5",   
                            'e_Do_you_have_any_tips_or_suggestions_for_us_': "null",   
                    }
                ],
        },
    "GlobalParameters":  {
    }
}

body = str.encode(json.dumps(data))

url = 'https://ussouthcentral.services.azureml.net/workspaces/f3359d9ddf994bf0bb366633a332c31a/services/a61956b1c7734b62ace8b5ab6a3d119d/execute?api-version=2.0&format=swagger'
api_key = 'abc123' # Replace this with the API key for the web service
headers = {'Content-Type':'application/json', 'Authorization':('Bearer '+ api_key)}

req = urllib.request.Request(url, body, headers)

try:
    response = urllib.request.urlopen(req)

    result = response.read()
    print(result)
except urllib.error.HTTPError as error:
    print("The request failed with status code: " + str(error.code))

    # Print the headers - they include the requert ID and the timestamp, which are useful for debugging the failure
    print(error.info())
    print(json.loads(error.read().decode("utf8", 'ignore')))
