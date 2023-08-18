BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO responses (category, response) VALUES ('chat-info','I am BotBuddy!    A universal chat agent that can help students before, during, and after the cohort as they look for resources to help with a job interview, request sample interview questions, or ask for reminders to send a follow-up to an employer.    ^You may ask things like:^    How do I create a new project?  What is mvc?  How to write a cover letter?  What should I wear to an interview?  What should I include in my resume?  How do arrays work?  ...and much more!!');
INSERT INTO responses (category, response) VALUES ('greeting-hello','Hello, how can I help you?');
INSERT INTO responses (category, response) VALUES ('greeting-thanks','You are welcome!');
INSERT INTO responses (category, response) VALUES ('conversation-continue','What else can I help you with?');
INSERT INTO responses (category, response) VALUES ('conversation-complete','Nice chatting with you.');

INSERT INTO responses (category, response) VALUES ('pathway-help-jobs','Absolutely, I can assist you with that! Here is a list of job search websites where you can start your job hunt:    $LinkedIn Jobs$*https://www.linkedin.com/?original_referer=https%3A%2F%2Fwww.google.com%2F*  ' ||
'$Indeed$*https://www.indeed.com/jobs?q=Indeed&vjk=c68a6f19c3d1ea60&mna=&=&aceid=&gclid=CjwKCAjw_uGmBhBREiwAeOfsdxx4kJkgiW2Sdb_UhIm635DA4srOTQS9OkymoTOIAl3X7L7UJ16rFxoCit4QAvD_BwE&gclsrc=aw.ds&from=mobRdr&utm_source=%2Fm%2F&utm_medium=redir&utm_campaign=dt*  '
'$Glassdoor$*https://www.glassdoor.com/index.htm*  $Monster$*https://www.monster.com/*  ' ||
'$CareerBuilder$*https://www.careerbuilder.com/?siteid=ppc_comp_YTqhyaKg&utm_source=google&utm_term=careerbuilder&utm_campaign=Brand_Core-T1_Exact&utm_medium=cpc&utm_content=YTqhyaKg_pcrid_413412474849_pkw_careerbuilder_pmt_e_pdv_c&gad=1&gclid=CjwKCAjw_uGmBhBREiwAeOfsd1amMx27fwtjjSjkCDbY0JKDdqBbZ2IiHguLk9QWUUWVEWCsI8rsExoC3xAQAvD_BwE*  ' ||
'$Huntr$*https://huntr.co/*     Remember, having an updated resume and tailored cover letter can greatly improve your chances of success. Happy job hunting!');

INSERT INTO responses (category, response) VALUES ('pathway-help-resume','Crafting a strong resume is essential for standing out in the job market. Make sure to highlight your skills, experiences, and achievements. Use action verbs and quantify your accomplishments where' ||
'possible. Focus on showcasing how you can add value to potential employers.');

INSERT INTO responses (category, response) VALUES ('pathway-help-resume-tech','This sample pertains to a technical role, underscoring the significance of adeptly structuring your resume to emphasize your skills and achievements in this field.    ^Name/Contact Information:^  At the top, include your ' ||
'legal name, phone number, email address, and hyperlinked LinkedIn profile. Optionally, include a GitHub link if you have relevant projects. Avoid displaying your full address and consider adding the major metro area for better search visibility.  ' ||
'  ^Professional Summary:^  Directly below your contact details, compose a concise professional summary of 20-30 words. Use sentence fragments and omit personal pronouns (e.g., "I").    ^Technical Skills:^  Highlight your technical proficiency. ' ||
'Depending on your focus (C# or Java), list skills like ASP.NET Web API, C#/.NET, SQL, HTML, CSS, JavaScript, Vue.js, and more. You can arrange these skills alphabetically or by type, using separators like "|". Feel free to add other skills you are confident in.  ' ||
'  ^Technical Experience:^  Showcase your projects, including Tech Elevator capstone and personal undertakings. Include project titles, technologies used, your role, and application descriptions. Mention any hackathons, awards, or technical events. Provide detailed information, ' ||
'such as building a vending machine application using OOP principles, C#, and file I/O.    ^Education:^  List Tech Elevator first, with the date range as "[Insert Month] 2022 - Present." Describe the bootcamp experience, highlighting your learning journey in dynamic web-based software ' ||
'systems using Java or C#. Optionally, add other educational achievements, but omit GPAs below 3.0 and high school details.    ^Professional Experience:^  Conclude with your professional background. For each role, specify the company, job title, location, and date range. Craft 3-5 bullet ' ||
'points showcasing your accomplishments, focusing on results, outcomes, and quantifiable achievements. Utilize strong action verbs, emphasize impact, and include relevant metrics.    By structuring your resume in this manner, you will effectively present your qualifications and ' ||
'experiences to potential employers in the technology field. This organized approach will enhance your chances of making a strong impression during your job search.');

INSERT INTO responses (category, response) VALUES ('pathway-help-cover-letter','A well-crafted cover letter plays a crucial role in introducing yourself to potential employers and showcasing your suitability for a specific job role. It serves as a personalized document that complements your resume, providing context and depth to your application. ' ||
'The cover letter typically includes your contact information, the date of submission, and the recipients details (though this is optional for digital applications). The salutation should be formal, using "Dear [Name]" or addressing a specific department or team.' ||
'    The introduction paragraph should succinctly introduce yourself, mentioning your name, the company you are applying to, the job title, and a brief overview of why you are an excellent fit for the role. It is an opportunity to express your enthusiasm and interest in the position. In the subsequent body paragraphs, you should align your qualifications ' ||
'and experiences with the job description, emphasizing how your skills and achievements directly address the company needs. Using specific examples, quantify your accomplishments to demonstrate your impact and problem-solving abilities    Researching the company goals and initiatives can help tailor your cover letter further, showing how you can contribute to ' ||
'their specific objectives. Highlighting your relevant technical expertise, projects, and contributions can strengthen your case. Finally, the closing paragraph is a call to action, expressing your eagerness to discuss your potential contribution and inviting further communication. Include your contact information and express gratitude for the opportunity. ' ||
'Sign off formally, using options like "Sincerely," followed by your typed name.    Remember, a cover letter is a chance to demonstrate your professionalism, alignment with company goals, and how you can provide value. By crafting a well-structured cover letter, you enhance your chances of making a positive impression and advancing in the hiring process.');

INSERT INTO responses (category, response) VALUES ('pathway-help-cover-letter-example','Here is an example of a cover letter:    [Your Name]  [Your Phone Number]  [Your Email Address]  [Optional: Your Home Address or City, State]  [Optional: Your LinkedIn URL]    [Date]  [Employer Name (if known)]  [Company Name]  [Company Address]  [Company City, State Company Zip Code]    ' ||
'Dear [Mr./Mrs./Ms./Miss] [Last Name],    I am writing to express my strong interest in the [Job Title] position at [Company Name], as advertised on [Job Posting Source]. With a passion for [Specific Skill or Area] and a proven track record in [Relevant Experience], I am excited about the opportunity to contribute my expertise to your dynamic team.    ' ||
'My background in [Technical Skills or Experience] has equipped me with a solid foundation to excel in a technical role at [Company Name]. Through my recent experience as a [Previous Job Title] at [Previous Company], I successfully [Achievement or Task], resulting in [Quantifiable Result]. Additionally, my proficiency in [Relevant Skill] allowed me to [Another Achievement or Task], leading to [Impact or Benefit to Company].    ' ||
'Researching [Company Name] commitment to [Company Goals or Initiatives], particularly [Specific Initiative], has further fueled my enthusiasm to join your team. I am excited to leverage my skills in [Relevant Skill] and [Another Relevant Skill] to help [Company Name] achieve [Specific Goal or Objective]. Furthermore, I am impressed by [Company Name] dedication to [Company Values or Achievements], which resonates with my own professional values.    ' ||
'I would welcome the opportunity to discuss how my technical expertise and achievements align with [Company Name] needs. Please find my attached resume for your review. I can be reached at [Your Phone Number] or [Your Email Address] to schedule a conversation at your convenience.    ' ||
'Thank you for considering my application. I look forward to the possibility of contributing to [Company Name] continued success as a part of your team.    Sincerely,    [Your Typed Full Name]');

INSERT INTO responses (category, response) VALUES ('pathway-help-interview','Preparing for an interview starts the moment you receive contact from the recruiter to schedule it. From that point until the interview day itself, thorough preparation is essential. Neglecting this preparation can negatively impact your performance, particularly in the tech industry.    ' ||
'Research is key. Investigate the company''s website and LinkedIn presence. Be able to succinctly explain the company''s activities to other    ' ||
'Ensure you''re ready up arrival. Bring multiple copies of your resume for each interviewer. If it is a virtual interview, have your resume at hand. Equip yourself with a notebook and pen to jot down questions for the interviewers Set your phone to silent or turn it off. For virtual interviews, arrange a clean and uncluttered space devoid of distractions.    ' ||
'Pay attention to your appearance. Opt for attire that makes a statement. This could mean a suit and tie, a blazer, a button-up shirt, dress slacks, or a suitable skirt/dress. Stick to neutral colors and avoid bold patterns. Grooming matters; trim facial hair and ensure your hair is neat and pulled back. Keep makeup and jewelry subtle. Apply a light touch of perfume or cologne.    ' ||
'Adequate preparation and attention to detail will significantly improve your interview experience! Good luck!');
INSERT INTO responses (category, response) VALUES ('pathway-help-attire','When it comes to interview attire, there are three primary clothing styles to consider. Firstly, there is "Business Formal", which embodies a traditional and conservative look suitable for industries like finance, law, and consulting. This style calls for a complete suit accompanied by dress shoes. Despite its formality, there is room to infuse a bit of personal flair into this attire.    ' ||
'Moving on, "Business Casual" offers a more relaxed yet still professional approach. It leans towards the formal side in comparison to "Smart Casual". This style encompasses a sport coat, a neutral blouse (which can be paired with a blazer or sweater if necessary), slacks or tailored dress pants, and leather shoes, or even fancier flats or pumps. It is the most commonly embraced style for interviews, striking a balance between professionalism and comfort.    ' ||
'On the lighter side of professional dressing, "Smart Casual" is a fun and lively alternative. This style maintains a degree of professionalism while embracing a lighter and more relaxed approach. The key is to select items that are neutral and well fitting, though they do not need to be overly formal. This style could potentially be considered the minimum requirement for interviews, even if the company culture typically leans towards more casual attire.    ' ||
'In terms of recommended clothing items, a variety of tops, bottoms, shoes, and accessories are suggested. These suggestions generally lean towards a neutral color palette, encompassing whites, navies, greys, and browns. However, there is room for tasteful incorporation of statement colors and patterns. To find more guidance on interview attire, resource like Cultivated Culture''s $What To Wear To An Interview$*https://cultivatedculture.com/what-to-wear-to-an-interview/* and The Muse''s $The Best Outfits for Job Interviews$*https://www.thebalancemoney.com/best-interview-attire-for-every-type-of-interview-2061364* are suggested.    ' ||
'For those looking to purchase suitable interview attire and accessories, a non-exhaustive list of stores is provided. Traditional department stores like Macy''s, Dillard''s, and Nordstrom, as well as brand name stores including Calvin Klein, Express, Banana Republic, and more, are recommended sources. Budget-conscious options like Ross, H&M, TJ Maxx, and even second-hand stores like Goodwill and Salvation Army are also suggested for those seeking more affordable choices.');

INSERT INTO responses (category, response) VALUES ('pathway-help-star','The STAR technique is a well-known, successful tactic to address and answer behavioral interview questions (i.e. questions that assess your actions and reactions in a given professional setting or situation).    '
'^STAR^ stands for:    ^Situation^    ^Task^    ^Action^    ^Result^    By following this method when interviewing, your answers will be specific, concise while also being detailed, and compelling. Use the video, slides, and example questions below to practice and prepare for behavioral interview questions.     '
'See ^BELOW^ for a helpful videos:    '
'$STAR BEHAVIORAL VIDEO$*https://drive.google.com/file/d/1X-7mPFQeZo9AHM_WH_JZJCpSe238Ruca/view?t=5s*   '
'$STAR Interview Technique - Top 10 Behavioral Questions Questions$*https://www.youtube.com/watch?v=WSbN-0swDgM*'
);
INSERT INTO responses (category, response) VALUES ('pathway-help-employers','The interview doesnt end once you leave or log off the Zoom call! Make sure youre taking the time to follow-up accordingly with the company and that you dont take your foot off the gas with other applications!    '
'Star by doing some of the below:    '
'^Send a thank you^    '
'Always send at thank you email (after each and every interview)    '
'Make it personal    '
 'Reiterate your interest in the role and company    '
 'Call out something specific from your conversation    '
 '^Dont take your foot off the gas!^    '
 'Keep applying until you have a signed offer letter in your hand    '
 '3 applications a week during the cohort and 5 applications after graduation (at a minimum)    '
 'The more applications you get out, the more interviews youll receive    '
 'Dont put your eggs in one basket    '
 'Even if you feel really good about an interview, dont stop applying    '
 '^Be Patient^    '
 'Take a breath    '
 'It may take a few weeks to hear back    '
 'Keep applying in the meantime    '
 'Collect rejections - use the rejections to give you momentum in your job search    '
);

INSERT INTO responses (category, response) VALUES ('curriculum-help-loop','^Loops^ are a fundamental concept for managing program control flow, but they go hand in hand with arrays. Loops provide a convenient way to write a small amount of code that can iterate through all of the values in an array one by one.'
'One of the things thats best learned with arrays is the concept of loops. Programs that you write can use any of the following control structures during execution:    '
' 1. ^A straight line/top-down^ - the program runs from top to bottom and every line executes.    '
' 2. ^Applying conditional^ - logic - using if/else, the program conditionally executes code based on a condition being true.    '
' 3. ^Repetitive code flow^ - the program continually executes a block of code as long as a condition remains true.    '
'There are three different types of loops used in programming:    '
'^for loop^ - used when you want code to repeat a defined number of times—for example, one time for each element in an array.    '
'^while loop^ - used when you want to continually execute a block of code as long as a condition remains true.    '
'^do-while loop^ - used when you want to execute a block of code at least once and repeat it as long as a condition remains true.    '
'The most common loop used is the for loop, though for many of the exercises you complete and perform on the job, any of the loop choices can be substituted.'
);

INSERT INTO responses (category, response) VALUES ('curriculum-help-conditionals', '^Conditional Code^    There are many different choices available to programmers who want their code to take various paths based on a true or false condition.    '
'The most common approach developers use to allow their code to take various paths is ^if^, ^if/else^, or ^if/else if/else^.    '
'With each of the following examples, any usage of the word condition can be replaced by a boolean variable or a more complex boolean expression evaluated from comparison and logical operators.    '
'^Single conditions with if^:    '
'The format for an ^if^ condition follows:    '
'if (condition) {    '
     'statement or block performed if condition is true    '
     '}    '
'^Two paths with if/else^:    '
'The format for an ^if/else^ condition follows:    '
'if (condition) {    '
     'statement or block performed if condition is true    '
 '} else {    '
     'statement or block performed if condition is not true    '
 '}    '
 '^Multiple paths using if/else if/else^    '
 'If you need to provide more than two paths for the code to take, you can use an  ^if/else if^ code branch. With the if/else if, each time you write ^if^, you need to  supply an additional condition that indicates if the following code block should run.    Once Java runs into the first true condition, it executes the following block of code. After that block, the program resumes after the last conditional block:    '
'if (condition) {    '
     'statement or block you do if the first condition is true    '
 '} else if (other condition) {    '
     'statement or block you do if the first condition is false    '
     'and the second condition is true    '
 '} else if (other condition 2) {    '
     'statement or block you do if the first two conditions are false    '
     'and the third condition is true    '
 '} else {    '
     'statement or block you do if all the above conditions are false    '
 '}    '
  '^Tip: Else NOT required^    '
 'The ^else^ isnt required. Its only useful if you want a default option if all the conditions before it are ^false^.'
);

INSERT INTO responses (category, response) VALUES ('curriculum-help-boolean','^Boolean^ Boolean expressions are fundamental in programming, always resulting in either true or false.  '
'They are built using comparison operators, which compare values, and logical operators, which combine boolean values.    '
'^Comparison operators^  like ==, !=, >, <, >=, and <= are used to compare values, yielding true or false based on conditions.    '
'^Logical operators^   such as && (AND), || (OR),  (XOR), and ! (NOT), create relationships between boolean values. AND returns true only if both operands are true, OR returns true if at least one operand is true, XOR returns true when operands differ, and NOT negates a boolean value.    '
'Complex boolean expressions involving both types of operators can be read step by step to determine their final true or false outcome.  '
);

INSERT INTO responses (category, response) VALUES ('curriculum-help-object-oriented-programming','^Object Oriented Programming^ Object-Oriented Programming (OOP) is a programming paradigm centered around the concept of objects, which are instances of classes.  '
'In OOP, software is organized as a collection of these objects that interact with each other through well-defined interfaces.    '
'Each object encapsulates data (attributes) and behavior (methods), promoting modularity, reusability, and flexibility in code design.    '
'OOP principles like ^inheritance^, ^encapsulation^, and ^polymorphism^ enable the creation of hierarchies of classes, allowing for code organization, abstraction, and the modeling of real-world relationships.  '

);

COMMIT TRANSACTION;

-- For when we figure out how to keep the identifiers in a database.
--   INSERT INTO categories (category, identifiers) VALUES ('greeting',"hi hi. hello how are you ? hey . hows it going good morning good evening good afternoon howdy");
--   INSERT INTO categories (category, identifiers) VALUES ('conversation-continue',"ok wow great oh is it ? oh ohh Thats great Good Really hmm lemme think hm hmmm hmmmmm");
--   INSERT INTO categories (category, identifiers) VALUES ('conversation-complete',"Thanks done that's all thats it. thats it I am done Thank you for information Thank. thanks. thank you. thanks nothing else thats it.");
--   INSERT INTO categories (category, identifiers) VALUES ('pathway-help-jobs',"I need help with jobs. job . i dont understand how to find a job. Where can I learn about job's ? what is a job ? Find me a job. How to get a job? find job");
--   INSERT INTO categories (category, identifiers) VALUES ('pathway-help-resume',"I need help with a resume. How to make a resume. Best example of resume . Where can I learn about resumes ? I dont understand how to write a resume. what is a resume ? Write me a resume. write resume");
--   INSERT INTO categories (category, identifiers) VALUES ('pathway-help-cover-letter'," I need help with my cover letter. Where can I learn about cover letters ? i dont understand how to write a cover letter. what is a cover letter ? Write me a cover letter. How to write a cover letter? write cover letter");
--   INSERT INTO categories (category, identifiers) VALUES ('pathway-help-interview',"where can I learn about interviews ? I need help with interviewing. I dont understand how to interview. What is an interview . Tips for interview tricks for interview . best interview habits . what not to do in an interview");
--   INSERT INTO categories (category, identifiers) VALUES ('pathway-help-employers',"what is a follow up with employers ? When should I follow up with employer? I need help following up with employer. Where can i learn about following up with employers ? i dont understand how to follow up with employers");
