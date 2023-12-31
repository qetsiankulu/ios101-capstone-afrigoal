
# ios101-capstoneproject (AfriGoal)

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)
5. [Sprint Planning](#Sprint-Planning)

## Overview

### Description

AfriGoal is an app designed for soccer fans. It is specifically tailored to be the hub of all information related to the African Cup of Nations that will take place in January 2024. Fans can to access live scores and real-time updates for all matches in the African Cup of Nations. Users can see scores for upcoming matches and current group standings. 

### App Evaluation

   - **Description**: AfriGoal is an app designed for soccer fans. It is specifically tailored to be the hub of all information related to the African Cup of Nations that will take place in January 2024. Fans can to access live scores and real-time updates for all matches in the African Cup of Nations. Users can see scores for upcoming matches and current group standings. 
   - **Category:** Sports
   - **Mobile:**  AfriGoal app's real-time features, push notifications, and habit-forming potential, combined with the scope of future updates, make it a uniquely mobile tool for soccer fans. The focus on timely, interactive, and engaging content tailored to the African Cup of Nations sets it apart from a basic website. 
       - **Real-Time Updates:** The app provides real-time updates for live scores and match results. This real-time feature is essential for soccer fans who want to stay updated on matches as they happen. It distinguishes the app from a static website
       - **Push Notifications:** Users can receive real-time notifications when teams score. This push notification feature is a key mobile aspect, keeping users informed and engaged during matches
   - **Story:** AfriGoal's story is compelling because it addresses a specific user need, extends its reach to a global audience, and emphasizes its long-term usefulness. The value of the app is clear: it keeps users informed, engaged, and connected to the world of African soccer, making it an appealing and valuable tool for its intended audience. 
   - **Market:** In 2013, the World Bank and African Development Bank reported that there are 650 million mobile users in Africa. Soccer is the most popular sport on a continent. The African diaspora spans across the Americas and Europe. This app has the potential to be the first of its kind in a promising and untapped market. A fully scaled app could be sold to organisers of the Africa Cup of Nations. 
       - **African Soccer Fans:** This is the primary target market for AfriGoal. It encompasses soccer enthusiasts across all 55 African countries who follow and support their national teams and players. These fans are passionate about the sport and the African Cup of Nations and are eager for real-time updates.
       - **International Soccer Fans:** Beyond the African continent and the diaspora, the app can also cater to international soccer fans who are interested in global soccer competitions. The African Cup of Nations has gained popularity worldwide given that many African nationals play in international leagues across the world. 
       - **Potential Partners:** In the future, the app could be of interest to potential partners and sponsors of the African Cup of Nations or related soccer events. As the app grows and gains users, it may become a valuable platform for advertisers, sponsors, and organizers to connect with their target audience.
   - **Habit:** The app is designed to cater to the habit of users during the African Cup of Nations, which occurs on odd-numbered years (2023, 2025, 2027) and runs for about 5 weeks. Mobile devices are essential for users to check group standings and scores regularly during this time.
   - **Scope:** 
        - V1: Users are able to look at the countdown till kick-off and upcoming matches. Users can view upcoming matches and their details. In addition to group standings and which teams in the competition.
        - V2: Users can view details about group standings and teams in the competition.
        - V3: User can follow specific teams in the competition and pick their favorite team.
        - V4: Home tab has a news feed and video highlights about the competition.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can view the countdown until the opening day of the competition
* User can view upcoming matches
* User can view details page about upcoming matches 
* User can view group standings 
* User can view which teams are in the competition

**Optional Nice-to-have Stories**

* User can see a news feed about events related to the competition
* User can view details page about each groups and the teams match history
* User can view highlights from previously played games
* User can view live scores as the game is being played 
* User can follow specific teams 
* User can search up which teams are in the competition
* User can view details page about each team 


### 2. Screen Archetypes

* Home Screen 
    - User can see countdown till opening game
* Matches 
    - User can see upcoming matches with date and time 
    - User can view details about upcoming matches
* Groups 
    - User can view group standings and which countries are in each group

* Teams
    - User can view which teams are in the competition
<!--     - V2: User can view details about each team -->

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Matches
* Groups
* Teams

**Flow Navigation** (Screen to Screen)

* Countdown Screen 
    * => Home

* Upcoming Matches Screen
    * => Matches

* Matches Details Screen 
    * => Matches

* Group Standings Screen
    * => Groups 

* Teams in the competition Screen
    * => Teams 
    
<!-- * V2: Teams Details Screen 
    * => Teams 
    * => Groups (if user clicks on team while looking at group standings) -->

## Wireframes

<img src="https://i.imgur.com/66NMxGj.png" width=600>

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.imgur.com/9XW5BwJ.png" width=300>

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

## Sprint Planning 

### Main Features
- [x] Home Screen displaying countdown till kick-off
- [x] Groups screen displaying group standings 
- [ ] Matches screen displaying competition fixtures 
- [ ] Matches screen displaying details 
- [x] Teams screen displaying all teams in the competition

### Sprints 
* Sprint 1: Build group screen and tabbed navigation
* Sprint 2: Build the home screen and countdown 
* Sprint 3: Build Matches screen and details
* Sprint 4: Build Teams screen

### Sprints (Updated 11/08/2023) 
* Sprint 1: Build the home screen with countdown till kick off  
  * Goals: Use Date() and Timer() objects to create the countdown
  * Reflection: Had to rebuild my entire project because my project file was corrupt. It was tedious but a good learning experience that helped me master my understanding of      constraints. 
  * Completed on 11/07/2023
   <div>
      <a href="https://www.loom.com/share/84f8ebd6ce654b9598c7048e8131832e" target="_blank">
         <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/84f8ebd6ce654b9598c7048e8131832e-with-play.gif">
      </a>
   </div>

* Sprint 2:  Build Teams screen
  * Goals: Populate a table view with the team names and flags through Live Score API
  * Reflection: I feel a lot more comofortable with the the logic behind API calls and decoding JSON data for my Team model. I also learned how to add packages to my Xcode project. I used the Nuke package to get the images from API. The compiler gives me no errors but the team names or their flags do not appear. Still debugging. 
 <img src="https://i.imgur.com/0JvHyTh.png" width=300>

 ### Sprints (Updated 11/12/2023) 
 * Sprint 2:  Build Teams screen
 * Goals: Populate a table view with the team names and flags through Live Score API
 * Reflection: I was about to debug my code effectively. I needed to add constraints to the elements in my table cell for them to appear. I learned that is that table cells grow depending on the constraints that you have inside of the content view. I also learned about properties of the navigation bar to change the way the navigation bar looks like on scroll 
 * Completed on 11/12/2023
 * <div>
    <a href="https://www.loom.com/share/fa7fcd0669d246a6a2c3d741ba291768">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/fa7fcd0669d246a6a2c3d741ba291768-with-play.gif">
    </a>
  </div>


### Sprints (Updated 11/17/2023) 
 * Sprint 3:  Build Groups screen
 * Goals: Create a table view where each table cell has multiple rows 
 * Reflection: I learned how to make a tabel cell that has multiple rows. Glad I was able to teach myself how to build because I believe it's a super useful UI design pattern to know. 
 * Completed on 11/17/2023
 * <div>
    <a href="https://www.loom.com/share/1e598eb959464ae59f1ffebc6b0cfa49">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/1e598eb959464ae59f1ffebc6b0cfa49-with-play.gif">
    </a>
  </div>




