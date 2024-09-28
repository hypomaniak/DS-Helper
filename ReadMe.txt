### DownloadStation Helper

The application is designed to simplify the process of adding download tasks to DownloadStation on your Synology DiskStation.

After upgrading my DS214SE, I found that this application could not connect anymore to DownloadStation.
So I gave a try to update the API requests and got it working.

Big thanks to:
- xaozai, the original author, for his work on this app
  https://github.com/xaozai/DS-Helper
- plneto and the community from Synology.Api.Client. Thanks to that, I could compare what was going wrong with the old requests.
  https://github.com/plneto/Synology.Api.Client

What is working:
- Tasks creation with URLs and magnet links.
- Tasks listing.
- Tasks deletion.
- Destination Folder creation on the NAS.

What is NOT working (yet?):
- Tasks creation from local .torrent files:
  this one is something I want to look at, but could be impossible due to the API behaviour changes since DownloadStation 3.8.16.

What should be improved:
- replace GetVersionEx() since it's declared as deprecated.


-----