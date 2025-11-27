# Firebase Deployment Guide for Ouneeb's Portfolio

This guide will help you deploy your portfolio website to Firebase Hosting.

## Prerequisites

- Node.js installed on your computer (Download from https://nodejs.org/)
- A Google account for Firebase
- Your portfolio files are ready

## Step 1: Install Firebase CLI

Open your terminal/command prompt and run:

```bash
npm install -g firebase-tools
```

This installs the Firebase Command Line Interface globally on your computer.

## Step 2: Login to Firebase

Run the following command to login to your Firebase account:

```bash
firebase login
```

This will open a browser window asking you to login with your Google account. Login and authorize Firebase CLI.

## Step 3: Navigate to Your Project Directory

In your terminal, navigate to your portfolio folder:

```bash
cd /Users/affanlaptops/Downloads/qayyum_portfolio
```

## Step 4: Initialize Firebase (Already Done)

Your project already has Firebase initialized (`.firebaserc` and `firebase.json` files exist), but if you want to reinitialize or connect to a different Firebase project, run:

```bash
firebase init
```

Select:
- **Hosting** (use spacebar to select, enter to confirm)
- Choose "Use an existing project" or "Create a new project"
- Set public directory as: `index` (this is already configured)
- Configure as single-page app: **No**
- Don't overwrite existing files

## Step 5: Move Files to the Index Folder

Your `firebase.json` is configured to deploy files from the `index` folder. You need to move all your HTML files and assets there:

```bash
# Create index folder if it doesn't exist
mkdir -p index

# Copy all necessary files to index folder
cp *.html index/
cp -r assets index/
cp -r about_files index/
cp -r contact_files index/
cp -r portfolio_files index/
cp -r project_files index/
cp -r project-single_files index/
```

**Note:** The current setup shows you already have an `index` folder with some files. Make sure all your updated HTML files and asset folders are inside the `index` folder.

## Step 6: Deploy to Firebase

Once everything is ready in the `index` folder, deploy your site:

```bash
firebase deploy
```

This command will:
1. Upload all files from the `index` folder
2. Deploy them to Firebase Hosting
3. Provide you with a URL where your site is live

You'll see output like:
```
✔  Deploy complete!

Project Console: https://console.firebase.google.com/project/your-project/overview
Hosting URL: https://your-project.firebaseapp.com
```

## Step 7: Access Your Live Website

After deployment completes, your website will be live at:
- `https://YOUR-PROJECT-ID.web.app`
- `https://YOUR-PROJECT-ID.firebaseapp.com`

## Alternative: Quick Deploy Steps

If you want to quickly deploy:

1. Make sure you're in the project directory
2. Run `firebase login` (one time only)
3. Run `firebase deploy`

## Updating Your Website

Whenever you make changes to your portfolio:

1. Update the HTML files in the `index` folder
2. Run `firebase deploy` again
3. Your live site will update within seconds

## Custom Domain (Optional)

To use your own domain (like www.ouneeb.com):

1. Go to Firebase Console: https://console.firebase.google.com
2. Select your project
3. Go to Hosting section
4. Click "Add custom domain"
5. Follow the instructions to verify your domain

## Troubleshooting

### Error: "Not logged in"
Run `firebase login` again

### Error: "No project active"
Run `firebase use --add` and select your project

### Files not deploying
Make sure all files are in the `index` folder (as specified in `firebase.json`)

### Need to change Firebase project
Run `firebase use --add` to select a different project

## Current Firebase Configuration

Your `firebase.json` file is configured as:

```json
{
  "hosting": {
    "public": "index",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "rewrites": [
      {
        "source": "**",
        "destination": "/index.html"
      }
    ]
  }
}
```

This means:
- Public folder: `index` (all deployable files should be here)
- Ignored files: firebase.json, hidden files, node_modules
- All routes redirect to index.html (single-page app behavior)

## Quick Command Reference

```bash
# Login to Firebase
firebase login

# Check which project you're using
firebase projects:list

# Switch project
firebase use PROJECT_ID

# Deploy to Firebase
firebase deploy

# Deploy only hosting
firebase deploy --only hosting

# View deployment history
firebase hosting:channel:list

# Test locally before deploying
firebase serve
```

## Testing Locally Before Deployment

To preview your site locally before deploying:

```bash
firebase serve
```

This will start a local server (usually at http://localhost:5000) where you can test your site.

## Contact Information on Website

Make sure the following contact information is correct on your website:
- Email: engrouneeb1994@email.com
- Location: Islamabad, Pakistan
- LinkedIn: https://linkedin.com/in/ouneeb-ur-rehman
- GitHub: https://github.com/engrouneeb
- Stack Overflow: https://stackoverflow.com/users/ouneeb-ur-rehman

All of this information is already updated in your portfolio files!

---

**Your portfolio is now ready to deploy! Just run `firebase deploy` when ready.**
