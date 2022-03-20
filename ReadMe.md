# aviro-health
How to consume a Machine Learning Studio (classic) web service
Two-Class Boosted Decision Tree module creates a machine learning model that is based on the boosted decision trees algorithm to identify indicators that will predict whether a positive user will complete the journey as intended and link to care, and articulate ways that this model can improve this outcome.
With the Machine Learning Web service, an external application communicates with a Machine Learning workflow scoring model in real time. A Machine Learning Web service call returns prediction results to an external application. To make a Machine Learning Web service call, you pass an API key that is created when you deploy a prediction. The Machine Learning Web service is based on REST, a popular architecture choice for web programming projects.

Machine Learning Studio (classic) has two types of services:

Request-Response Service (RRS) – A low latency, highly scalable service that provides an interface to the stateless models created and deployed from the Machine Learning Studio (classic).
Batch Execution Service (BES) – An asynchronous service that scores a batch for data records.
To connect to a Machine Learning Web service, use the urllib2 library for Python 2.X and urllib.request library for Python 3.X. You will pass ScoreData, which contains a FeatureVector, an n-dimensional vector of numerical features that represents the ScoreData. You authenticate to the Machine Learning service with an API key.

To run the code sample

Deploy "Sample 1: Download dataset from UCI: Aviro hackathon dataset" experiment, part of the Machine Learning sample collection.
Assign apiKey with the key from a Web service. See the Get an authorization key section near the beginning of this article.
Assign serviceUri with the Request URI.
