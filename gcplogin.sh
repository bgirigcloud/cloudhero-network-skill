There are multiple ways to connect to GCP from your local system(depending on what exactly you’re trying to do).

The first option is to log in using the --no-launch-browser option. This still requires interaction from a human user, but doesn't require a browser on the machine you're using:

> gcloud auth login --no-launch-browser
Go to the following link in your browser:
https://accounts.google.com/o/oauth2/auth?redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob&prompt=select_account&response_type=code&client_id=32555940559.apps.googleusercontent.com&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute&access_type=offline
Enter verification code: *********************************************
Saved Application Default Credentials.
You are now logged in as [user@example.com].
Your current project is [None].  You can change this setting by running:
$ gcloud config set project PROJECT_ID
The non-interactive option involves service accounts. The linked documentation explains them better than I can, but the short version of what you need to do is as follows:

Create a service account in the Google Developers Console. Make sure it has the appropriate “scopes” (these are permissions that determine what this service account can do. Download the corresponding JSON key file.
Run gcloud auth activate-service-account --key-file <path to key file>.
Note that Google Compute Engine VMs come with a slightly-different service account; the difference is described here.

Note:

If you want to logout from all the accounts run the following command

$ gcloud auth revoke --all

If you want to logout from a specific account then run the following command

$ gcloud auth revoke <your_account>

If you want to login with a different account, you can run the following command

$ gcloud auth login

This will take you to the Google’s login page where you can choose the account with which you want to login
