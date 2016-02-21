# Planning our application
  1. Answer questions
    - What are we building?
    - Who are we buiding it for?
    - What features we need to have?
  2. User stories
  3. Model our data
  4. Think through the pages we need in our application

## Questions
  1. What are we building? A book review site. A page where we can post our *personal thoughts* about books we have read and have people contact us.
  2. Who are we building it for? We are building it for ourselves, but also for the community. Sharing what we like or dislike about a book. In addition, this site is for learning purpose.
  3. What features do we want to have?
    - Reviews
      - Preview image
      - CRUD
      - Comments (Disqus or Facebook)
      - WYSIWYG editor (CKeditor)
      - Connects with categories
    - Categories
      - CRUD
      - Connects with reviews
    - User
      - Authentication (Devise)
      - Authorization (Cancancan or Pundit)
    - Contact
      - Contact form
      - Sendgrid

## User stories
  As a *BLANK*, I want to be able to *BLANK*, so that *BLANK*
    - As a user, I want to create a review, so that I can express my thought about a book that I read.
    - As a user, I want to edit & delete my review, so that I can manage it.
    - As a user, I want to write review in a convenience way, so that it is easy for me to write reviews.
    - As a user, I want to change my personal information, so that I can manage my account.
    - As a user, I want to have ability to log-in & log-out, so that I can log-in or log-out.
    - As a guest, I want to views all the reviews, so that I can read them.
    - As a guest, I want to sign-up, so that I have all the privilege of a user.
    - As an admin, I want to have all the privilege of a user, so that I am a user.
    - As an admin, I want to be able to edit & delete reviews from other users, so that I can control the site.
    
## Modeling our data
  **Review**
    belong_to :user
    has_and_belongs_to_many :categories
    title:string
    author:string
    description:string
    content:text
    preview_image:string
  **Category**
    has_and_belongs_to_many :reviews
    title:string
    description:string
  **User**
  
##  Think through the pages we need in our application

  - Home welcome#index
  - Reviews reviews#index, reviews#show, reviews#create, reviews#edit
  - Categories categories#show, categories#create, categories#edit
  - Contact contact#index
  - User sign up, sign in