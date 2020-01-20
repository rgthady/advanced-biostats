#BIOL 404/504 Advanced Biostats
##William & Mary, Spring 2020

**Lecture:** Tuesdays & Thursdays, 6:30 to 7:50pm, ISC 3291  
**Instructor:** Sam Mason  
**Email:** sdmason@email.wm.edu  
**Office Hours:** Mondays, 6:30 to 7:50pm, ISC 3291

###Course Description

Given the breadth of inferential techniques used in modern biological research, it has become increasingly important for scientists to maintain a high degree of statistical literacy. This course builds on the fundamental principles taught in introductory statistics courses, and offers practical insight into three of the most commonly applied modeling frameworks in contemporary literature: (1) linear and generalized linear modeling, (2) multivariate ordination, and (3) Bayesian analysis. These three concepts will structure the course schedule following a brief introduction to probability distributions, and the statistical programming language, R. To prioritize statistical application and interpretation, the course will rely heavily on R-based, in-class exercises, weekly take-hone problem sets, and methods-focused paper discussions.

###Modes of Evaluation

**1. Problem Sets**

   Problem sets will be assigned weekly on Tuesdays, focusing on recently discussed and demonstrated topics and techniques. Submission of your completed work, in the form of an annotated .R document (see [Homework Formatting & Submission](###Homework-Formatting-&-Submission) for more details), should be made to the [course GitHub repository](https://github.com/sdmason/advanced-biostats) at the start of class on the following Tuesday. Any problem set can be revised and resubmitted to GitHub within one week of recieving the graded first attempt. Revised work is eligible for up to 75% of the original point value. For example, if a particular problem is marked 3/10, a perfect revision would earn the statistician a 7.5/10. It follows then that, aside from personal edification, revising problems marked >= 0.75 confers no additional academic benefit. Problem sets should initially be completed independently; however, I encourage you to seek the help of your peers when rivising a problem set! And, of course, you are always welcome to discuss problem sets with me at any time.

**2. Paper Discussions**

   We will dedicate the first half of every other Thursday class to discussing the statistical methods employed in published literature. Statisticians should arrive to class having read the paper (with particular gusto in the methods and results sections), and prepared to contribute at least three questions/answers/critiques to the discussion. These sessions will be graded based on participation. If a statistician should feel uncomfortable in this type of environment, they are invited to engage in a spirited email exchange with me for full credit prior to the in-class discussion.

**3. Final Exam**

   The final exam will take the form of an extended, comprehensive problem set, to be submitted to the [course GitHub repository](https://github.com/sdmason/advanced-biostats) at the beginning of the scheduled exam period. Statisticians will be given two weeks to independently complete the exam.

**4. Methods Replication Project (Undergraduate)**

   Undergraduate members of the class will, in pairs, be assigned a peer-reviewed journal article and asked to reproduce the statistical methods as faithfully as possible. Their efforts will be shared with the class in a 20 minute presentation, structured and graded according to the [Methods Replication Project Rubric](https://github.com/sdmason/advanced-biostats/blob/master/resources/mrp-rubric.md).

**5. In-class Lecture and Exercise (Graduate)**

   Graduate members of the class will, in pairs, select a statistical topic, not covered by this course, to teach to their peers. Statisticians should prepare a ~30 minute lecture and ~50 minute complimentary R-based exercise. Suitable topics will vary broadly; here are a few that I find interesting, though selections can be made from outside of this list:

   * Data Visualization
   * Time-to-Event Analysis
   * Tree-Based Modeling
   * Data-Mining & Acquisition
   * Path Analysis
   * Bayesian Modeling in STAN
   * Analysis of Citizen Science Data

###Grade Computation

| Assessment | Points | Quantity | Point Total | Course Weight |
| :---: | :---: | :---: | :---: | :---: |
| Problem Sets | Variable | 12 | 500 | 0.625 |
| Paper Discussions | 5 | 20 | 100 | 0.125 |
| Final Exam | 100 | 1 | 100 | 0.125 |
| Project | 100 | 1 | 100 | 0.125 |

###Letter Grade Assignment

| Letter | Range |
| :---: | :---: |
| A | [0.93 - 1] |
| A- | [0.9 - 0.93) |
| B+ | [0.87 - 0.9) |
| B | [0.83 - 0.87) |
| B- | [0.8 - 0.83) |
| C+ | [0.77 - 0.8) |
| C | [0.73 - 0.77) |
| C- | [0.7 - 0.73) |

###Course Software

**R v3.6.2**

Throughout the course we will be relying heavily on R, a flexible statistical programming language developed and maintained by the [R-Core Team](https://cloud.r-project.org/index.html). R is open-source, powerful, and, being a fully-fledged object-oriented programming language, scriptable. Statisticians should download the latest version for use in this course.

** R Studio v1.2.5033**

When downloaded from the r-project.org website, R ships with a simple GUI, featuring a text editor, terminal, and support for graphics windowing. As we'll find, this simple interface can be limiting when working with multiple packages and dozens of variables. For the sake of usability, we will be interacting with R through R Studio, a wonderfully helpful integrated development environment (IDE) that can be [downloaded here](https://rstudio.com/products/rstudio/download/#download). 

**GitHub**

This course uses the code sharing website, [GitHub](http://github.com), to distribute all information through the [course repository](https://github.com/sdmason/advanced-biostats). This repository will also serve as the submission location for all completed problem sets. GitHub uses the Git version control protocol, assigning all file modifications a unique hash, along with a time stamp. We will leverage this version control protocol when revising submitted problem sets in accordance with the **Problem Sets** descriptor in the [Modes of Evaluation](###Modes-of-Evaluation) section.

**Codeshare**

When necessary, the instructor will use the web app, [Codeshare](https://codeshare.io), for real-time code editing and collaboration during class or office hours.

###Homework Formatting & Submission

Homework should be formatted following the example below:

```
## Problem Set 1
## Sam Mason

## 1
x <- rnorm(100, 0, 1)      # Creates a vector of 100 random draws from a normal 
                           # distribution with mean 0 and sd 1
y <- rnorm(100, 2, 0.5)
plot(y~x)                  # Plots the y vector as a function of the x vector

## 2
lmod <- lm(y~x)            # Creates a univariate regression model where y is the 
                           # response variable and x is the explanatory variable
summary(lmod)
```

* The header should include the problem set title and the statistician's full name.
* Problem numbers should be clearly marked with a double hash.
* Annotations should be aligned to the right, using a single hash.
* The same operation does not need to be annotated each time it is used (e.g., rnorm()).
* Utility functions (e.g., View(), summary(), print(), etc.) do not need annotation.

Completed problems sets should be uploaded to the correct folder in the [problem-sets](https://github.com/sdmason/advanced-biostats/tree/master/problem-sets) directory of the course repository. Each statistician must upload their own work, as submission is assigned to the uploader's GitHub account.

###Academic Honesty

William & Mary has the nation's oldest [honor code](http://www.wm.edu/honor), dating back to at least 1779. The Honor Code establishes a level playing field where all can be fairly evaluated based on their own ability and preparation. The Code also provides the bond of our word based on our honor.

Unless otherwise stated explicitly by me, all work you submit must be your own, and I expect you to work independently on assignments. On written assignments, you must provide appropriate citation for all thoughts, words, or ideas that are not your own (this includes the ideas of peers). Unless authorized by me, you cannot consult outside resources. The student-led honor system is responsible for resolving any suspected violations of the Honor Code, and I will report all suspected instances of academic dishonesty to the honor system. I also encourage you to contact me with any questions or concerns. The [Student Handbook](http://www.wm.edu/studenthandbook) includes your responsibilities as a student. Your full participation and observance of the Honor Code is expected.

###Student Accessibility Service

William & Mary accommodates students with disabilities in accordance with federal laws and university policy. Any student who feels they may need an accommodation based on the impact of a learning, psychiatric, physical, or chronic health diagnosis should contact Student Accessibility Services staff at 757-221-2512 or at sas@wm.edu to determine if accommodations are warranted and to obtain an official letter of accommodation.
