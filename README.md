# Ouneeb Ur Rehman - Portfolio Website

Professional portfolio website showcasing my experience as a Senior Mobile Developer & Frontend Developer.

## 🚀 Quick Deployment to Firebase

### Method 1: Using the Automated Script (Easiest)

**On Mac/Linux:**
```bash
./prepare-for-deployment.sh
firebase login
firebase deploy
```

**On Windows:**
```cmd
prepare-for-deployment.bat
firebase login
firebase deploy
```

### Method 2: Manual Deployment

1. **Install Firebase CLI:**
   ```bash
   npm install -g firebase-tools
   ```

2. **Login to Firebase:**
   ```bash
   firebase login
   ```

3. **Prepare files:**
   Run the preparation script:
   - Mac/Linux: `./prepare-for-deployment.sh`
   - Windows: `prepare-for-deployment.bat`

4. **Deploy:**
   ```bash
   firebase deploy
   ```

5. **Your site is live!** 🎉

## 📖 Detailed Instructions

See [FIREBASE_DEPLOYMENT_GUIDE.md](FIREBASE_DEPLOYMENT_GUIDE.md) for complete step-by-step instructions.

## 📁 Project Structure

```
qayyum_portfolio/
├── index.html              # Home page
├── about.html              # About page with experience
├── contact.html            # Contact page
├── portfolio.html          # Portfolio gallery
├── project.html            # Projects listing
├── assets/                 # CSS, JS, images
├── about_files/            # About page resources
├── contact_files/          # Contact page resources
├── portfolio_files/        # Portfolio resources
├── project_files/          # Project resources
└── index/                  # Deployment folder (auto-generated)
```

## ✨ What's Updated

- ✅ Updated all content with your CV information
- ✅ Updated copyright to "Ouneeb Ur Rehman 2024"
- ✅ Correct contact information (email, LinkedIn, GitHub, Stack Overflow)
- ✅ Experience section updated with all positions
- ✅ Skills section matches your CV
- ✅ Ready for Firebase deployment

## 🔧 Technologies Used

- HTML5
- CSS3
- JavaScript
- Firebase Hosting

## 📞 Contact Information

- **Email:** engrouneeb1994@email.com
- **Location:** Islamabad, Pakistan
- **LinkedIn:** [linkedin.com/in/ouneeb-ur-rehman](https://linkedin.com/in/ouneeb-ur-rehman)
- **GitHub:** [github.com/engrouneeb](https://github.com/engrouneeb)
- **Stack Overflow:** [stackoverflow.com/users/ouneeb-ur-rehman](https://stackoverflow.com/users/ouneeb-ur-rehman)

## 🌟 Features

- Responsive design
- Dark theme
- Smooth animations
- Project showcase
- Skills visualization
- Contact form
- Social media integration

## 📝 Making Updates

1. Edit the HTML files in the root directory
2. Run the preparation script
3. Deploy with `firebase deploy`

## 🧪 Testing Locally

Before deploying, test your site locally:

```bash
firebase serve
```

Then visit `http://localhost:5000` in your browser.

## 🆘 Need Help?

Refer to the [FIREBASE_DEPLOYMENT_GUIDE.md](FIREBASE_DEPLOYMENT_GUIDE.md) for troubleshooting and detailed instructions.

---

**© 2024 Ouneeb Ur Rehman. All rights reserved.**
