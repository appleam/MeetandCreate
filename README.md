# Meet and Create
# Working With Data and Code Assessment 2
 
A SwiftUI Prototype for creative collaboration!
Meet and Create is an application prototype designed to connect creatives from diverse backgrounds, bridging the gap between online networking and real-world collaboration. 
The app allows users to discover, connect, and meet up for hands-on projects, fostering meaningful professional relationships.

This application prototype for WWWDC was built using Swift and SwiftUI in Xcode to ensure an interactive and user-friendly experience that supports creative networking and collaboration.

User Profiles: View and explore creatives' backgrounds and skills.
Huddle: Group chat functionality for seamless communication amongst huddle members, discuss offline meet-ups
Scrapbooks: Users can create their own scrapbook as well as seeing what other huddle members have been up to in their previous huddles. 


Click the run button in Xcode to see how the code runs. Use the iPhone16Pro Simulator to see how it would look on an iPhone. 

## Project Structure

**MeetAndCreate:** Main project directory
**Views:** Contains SwiftUI views for different screens
**Models:** Data models for user profiles, messages, and projects
**Components:** Reusable UI elements (for e.g. chat bubbles, buttons)

### Coding pages

**Calendar:** Multidate picker, Date range restrictions to limit selections to the next 14 days. This will be used for users to be placed with other users with the same availability. 
It should be noted that the finding view acts as a placeholder for now, but in future will handle matching users with others who have similar availability.

**Explore scraps:** Browse existing scrapbooks from other members. 

**Finding huddle:** Finding huddles for user. 

**Home view:** Navigation bar. The top page when users first open the application. 

**Huddle:** The page that users see when first placed into a "huddle". 

**Message chat:** Groupchat where users can interact with other members in their huddle. 

**Huddle members:** Users can see the profile of other members (About me, past huddles, short introduction, comfort food, hobbies, etc)

**Scraps View:** What users see in the Scrapbook tab. Users can select between 'Exploring Scrapbooks' and 'Edit your Scrapbook' 

Other pages are not really used much to run the code. 

All code was written by me, except for the section `path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY)) path.addLine(to: CGPoint(x: rect.maxX - tailWidth - cornerRadius, y: rect.minY)) path.addArc(center: CGPoint(x: rect.maxX - tailWidth - cornerRadius, y: rect.minY + cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false) path.addLine(to: CGPoint(x: rect.maxX - tailWidth, y: rect.maxY - cornerRadius)) path.addArc(center: CGPoint(x: rect.maxX - tailWidth - cornerRadius, y: rect.maxY - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)` in the section under the MessageChat page. This was written using the assistance of the iOS Academy tutorial [Chat Messages in App (Swift 5) Xcode 11 - iOS] (https://www.youtube.com/watch?v=6v4fmg9iRSU) 
Assets (images) were used to create certain pages for time efficiency instead of writing the code for the full pages.

