## Step 4: Train Form Recognizer models

### Step 4.1: Train model for Covid test forms

1. Go to [Azure Portal](portal.azure.com) and select the Storage Account that was created as part of the deployment.
2. Go to 'Training' container, and 'forms' folder and upload forms from folder [Data/FormsRecognizerLabelData/CovidTestForm](./Data/FormsRecognizerLabelData/CovidTestForm) folder. 
3. Go to [Form Recognizer Studio](https://formrecognizer.appliedai.azure.com/studio), select "Custom Form", select "+Create a project" to create a project for labeling. 
4. Enter Project name: "CovidFormsProject" or any other project name of your choice.
5. Enter Description:"Custom form recognizer model with sample Contoso forms" and click "Continue".
6. This step connects the form recognizer studio to form recognizer resource in your subscription. Select your Subscription, Resource Group, Form Recognizer resource which was created as part of deploying the resources and select the latest API Version. Click "Continue"
7. This step connects the form recognizer studio to ADLS storage/container resource in your subscription to access the training data. Select subscription, Resource Group, storage account, container: "Training" and folder "forms"- which was created as part of the deployment. Click "Continue". Review Information and click "Create Project"

![image1](./images/FR_image1.png "image1")
 
8. After the project is created, forms with OCR, Key-Value pair labels will appear like below
![image2](./images/FR_image2.png "image2")
 
9. Select `Template` for Build Mode and click on "Train" to train the form recognizer model to extract the key-value pairs.
![image3](./images/FR_image3.png "image3")

10. Once Training is done, the model will be located in Models with confidence score of each field.
![image4](./images/FR_image4.png "image4")
 
11. This is the modelID which will be used in calling the form recognizer model from Logic App.

### Step 4.2 Train model for vaccination cards. 
1. Go to [Azure Portal](portal.azure.com) and select the Storage Account that was created as part of the Synapse deployment.
2. Create `training` container, and `vaccinationcards` folder and upload forms from the cloned repository [Data/FormsRecognizerLabelData/VaccinationCardForm] (./Data/FormsRecognizerLabelData/VaccinationCardForm) folder.
3. Go to [Form Recognizer Studio](https://formrecognizer.appliedai.azure.com/studio), select "Custom Form", select "+Create a project" and follow below steps to create a project for labeling. 
4. Enter Project name: "FRVaccineSolutionAccelerator" or any specific project name user want to give.
5. Enter Description: "This is a custom form recognizer model trained on sample Contoso forms to mandate employee testing weekly" and click "Continue".
6. This step connects the form recognizer studio to form recognizer resource in your subscription. Select your Subscription, Resource Group, Form Recognizer resource which was created as part of deploying the resources and select the latest API Version. Click "Continue"
7. This step connects the form recognizer studio to ADLS storage/container resource in your subscription to access the training data. Select subscription, Resource Group, storage account, container: "Training" and folder "forms"- which was created as part of the deployment. Click "Continue". Review Information and click "Create Project"
8. After the project is created, forms with OCR, Key-Value pair labels will appear like below
![Form Recognizer Project](./images/FR_image1-1.png)
5. Click on "Train" to train the form recognizer model to extract the key-value pairs.
6. Once Training is done, the model will be located in Models with confidence score of each field.
![Form Recognizer Project](./images/FR_image2-1.png)
7. This is the modelID which will be used in calling the form recognizer model from Logic App.

Navigate to Step 5 in the the [Deployment Guide](./Deployment.md)