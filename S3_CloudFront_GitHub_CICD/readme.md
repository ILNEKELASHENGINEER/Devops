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
