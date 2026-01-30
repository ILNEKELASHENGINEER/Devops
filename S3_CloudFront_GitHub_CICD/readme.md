# Deploying web application using AWS services and automating workflows with GitHub Actions

## Overview

This project hosts a simple personal/portfolio website with automated deployments triggered by every push to the main branch. It serves as an educational resource for understanding the core DevOps loop (code → pipeline → deploy) and introduces basic AWS concepts, including object storage and Content Delivery Network (CDN).

## Workflow
<p align="center"> <img width="705" height="831" alt="portfolio_cicd drawio" src="https://github.com/user-attachments/assets/1f2c3438-93bf-469f-9367-e141ee4792c8" /> </p>

## Purpose

The purpose of this project is to:

- Create a personal portfolio site that showcases your work and skills.
- Implement an automated deployment pipeline using GitHub Actions.
- Learn about AWS services such as S3 for object storage and CloudFront for CDN.
- Understand the process of setting up HTTPS for secure connections.
- Experience cache invalidation to ensure users receive the most up-to-date content.

## Deliverables

- An Amazon S3 bucket for hosting the static website.
- A CloudFront distribution to serve the content with low latency.
- HTTPS enabled for secure access to the site.
- A GitHub Actions workflow for CI/CD automation.
- A cache invalidation step to refresh CloudFront cache when new content is deployed.

## Screenshots
### 1. Initial portfolio before code checkout
<img width="1899" height="1016" alt="image" src="https://github.com/user-attachments/assets/797e17f7-2d34-420e-9d33-bd125d4cc7fa" />

### 2. Code checkout and workflow triggered pipeline -> Project build in GITHUB cicd 
<img width="1905" height="736" alt="image" src="https://github.com/user-attachments/assets/fdab2748-0619-4a24-8947-f25bea0e044f" />
### Above is the pipeline running status ###

### 3. code being synced to aws s3
<img width="1500" height="1500" alt="image" src="https://github.com/user-attachments/assets/560e7ef9-cb15-4015-92c6-b454995b9e5a" />

### 4. Portfolio got updated at the end of the pipeline
<img width="1895" height="1012" alt="image" src="https://github.com/user-attachments/assets/ccc2b6fc-3948-45de-8f03-d88488ebbed9" />

### 5. Cloudfront cache statistics Confirms the CDN is working
#### <img width="1849" height="758" alt="image" src="https://github.com/user-attachments/assets/38f028eb-f809-4157-906d-906441a78c5f" />


## Feel free to rise issue and customize the code
#### ❤️❤️❤️ Happy coding and hacking !!!! ❤️❤️❤️


