#!/bin/bash

# Prepare Portfolio for Firebase Deployment
# This script organizes all files into the index folder for deployment

echo "🚀 Preparing portfolio for Firebase deployment..."

# Navigate to the project directory
cd "$(dirname "$0")"

# Backup the old index folder
if [ -d "index_backup" ]; then
    echo "📦 Removing old backup..."
    rm -rf index_backup
fi

echo "📦 Creating backup of existing index folder..."
mv index index_backup

# Create new index folder
echo "📁 Creating new index folder..."
mkdir -p index

# Copy all HTML files to index
echo "📄 Copying HTML files..."
cp *.html index/ 2>/dev/null || echo "⚠️  No HTML files found in root"

# Copy assets folder
if [ -d "assets" ]; then
    echo "🎨 Copying assets folder..."
    cp -r assets index/
fi

# Copy all resource folders
echo "📂 Copying resource folders..."
for folder in about_files contact_files portfolio_files project_files project-single_files; do
    if [ -d "$folder" ]; then
        echo "  - Copying $folder..."
        cp -r "$folder" index/
    fi
done

# Copy images from old index folder
echo "🖼️  Copying images from backup..."
if [ -d "index_backup" ]; then
    mkdir -p index/index
    cp index_backup/*.jpg index/index/ 2>/dev/null || true
fi

echo "✅ Preparation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Run: firebase login"
echo "2. Run: firebase deploy"
echo "3. Your portfolio will be live!"
echo ""
echo "💡 To test locally first, run: firebase serve"
