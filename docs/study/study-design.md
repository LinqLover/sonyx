# Sonyx User Study Design

Overview: **Design** · [Evaluation](./study-evaluation.md)

---

## Research questions

- **Overarching hypothesis:** When programmers receive additional sonic feedback about runtime state and behavior from their interactive programming environment, their effectiveness and programming experience increase.
  - **Hypothesis 1:** Proficient Squeak/Smalltalk programmers solve programming tasks more effectively when using the *sonyx* prototype (compared to using the tooling of the base system only).
  - **Hypothesis 2:** Proficient Squeak/Smalltalk programmers are more satisfied with their process when using the *sonyx* prototype to solve programming tasks (compared to using the tooling of the base system only).
  - **Hypothesis 3:** Proficient Squeak/Smalltalk programmers succeed better in developing cognitive empathy with a software system that are trying to analyze within a programming tasks when using the *sonyx* prototype (compared to using the tooling of the base system only).
  - Version used within the study: [`004397a`](https://github.com/LinqLover/sonyx/tree/004397a67c25ab8d8d793c61d6e9c94a68c976c4) with dependencies at the state of `2022-01-19 14:41` (`Squeak6.0 Alpha #20997`/`OSVM 202112201228`)
  - **Rationale:**
    - By extending the interface of the programming environment with auditory displays, the maximum output bandwidth is increased and programmers are empowered to harness their auditory processing capacities, handle information streams from multiple sources simultaneously, monitor background processes, and gain alternative perspectives to the subjects of their problems.
    - General programming expertise is required to rule out that users struggle with fundamental programming concepts rather than focusing on effective task-solving. As the sonyx prototype is implemented in the Squeak/Smalltalk programming environment, programmers need to know this environment.
- **Explorative questions:**
  - How useful are auditory displays to support programmers in common programming tasks?
  - For which programming tasks are auditory displays particularly useful or useless?
  - What are the strengths and limitations of auditory displays in programming?
  - How usable, learnable, and convenient is the sonyx prototype and how could it be improved?
- **No goals of the study:** <a name="nogoals"></a>
  - Establish the sonyx prototype as an alternative to the conventional Squeak/Smalltalk toolset. The current prototype is designed to extend rather than to replace the base system, and it has an insufficient extent for covering most major programming workflows.
  - Prove that auditory displays are a more promising output interface in programming environments than visual displays. Instead, the extension of a visual IDE with auditory displays is examined.

## Preliminary considerations

- **General study format:**
  - In the study, $n$ participants are asked to perform $k$ programming-related tasks ($k = 3, n \in [5, 7]$).
  - In the **experimental condition (sonyx),** participants are asked to perform given tasks with the help of sonyx. In the **first control condition (null condition),** they are restricted to using the conventional Squeak/Smalltalk toolset. In the **second control condition (RVV),** they are provided an equivalent tool to visualize runtime values [RVV].
  - The study is designed as a **within-subjects** user study with multiple tasks to minimize influence of confounding variables. Each participant is assigned a randomized order of tasks and a randomized bijective mapping between tasks and conditions.
  - The study is run in separate **one-to-one sessions.** Every participant receives comparable individual guidance by the study manager to ensure that participants approach the task within the intended frame (see [below](#taskdesign)).
- **Design of testable programming tasks:** <a name="taskdesign"></a>
  - Tasks need to be chosen as representative as possible for common programmers‘ workloads. Because of the small extent of the current prototype (see [above](#nogoals)), tasks need to be defined with a fine granularity to maximize the coverage of single solution steps by the existing prototype while ensuring comparable solution strategies that are performed by all participants.
  - To eliminate irrelevant independent variables, the overarching process for solving a programming problem is broken down into single steps (from reproducing a bug over tracing it down to a defect up to deciding on an appropriate fix). For each study task, only a single step for a given problem is observed in an experiment. In particular, the „zeroth solution step“ of choosing the right tool for a job is excluded to eliminate another unintended independent variable. This also contributes to shorten the temporal requirements to each participant.
  - Following prior insights about the prototype, the programming tasks will focus on the area of *program comprehension* and *defect identification*.
- **Organizational aspects:**
  - The study sessions will be scheduled between ==2022-01-19== and ==2022-01-28==.
  - The study sessions are conducted via Zoom with the participants sharing their screens while performing their tasks in a provided Squeak/Smalltalk image.
  - To exclude language deficiencies, all study sessions are conducted in German language.

## Recruiting participants

- requirements:
  - fundamental programming proficiency
  - at least fundamental proficiency with Squeak/Smalltalk
    - used for at least 6 months
    - used in the last year if used longer than one year, otherwise used in the last 6 months
  - basic visual and acoustic abilities
- environments for recruitment:
  - [x] SWT undergraduate students from summer semester 2021
  - [x] graduate students from seminars at SWA chair
  - [x] graduate students from seminars at Neuroscience group
- financial compensation (30 €/participant)

## Analysis

- **Independent variables:**
  - Auditory displays (intended): Whether the sonyx prototype is used while performing given tasks.
  - Tool choice in the control group (confounding): Eliminated by specifying the concrete tools to be used.
  - Basic demographic data (confounding): Collect age, gender, language, and educational degree in a questionnaire.
  - Programming proficiency (covariate): Operationalize via a questionnaire or short skill test.
  - Sonic affinity (covariate): Operationalize via a questionnaire.
  - other confounding variables: current condition of participants, time of the day, …
- **Dependent variables:** <a name="dependent-variables"></a>
  - Programming effectiveness:
    - success rate (grading scheme): To what extent did the participant achieve the expected, qualitative solution?
      - For each task, a time limit is specified.
      - To avoid speculative expense and to mitigate the absence of a pre-pilot study, a horizon of expectation/grading scheme is not created in advance. Instead, the raw results of every participant are recorded and quantified after all results are available. The post-hoc created grading schemes are listed below for each task.
      - quantification: ordinal scale
    - time to success (chronometer): How much time did the participant need to solve the task (success is detected by study manager)?
      - quantification: ratio scale
  - Programming experience (questionnaire):
    - process and tooling satisfaction: How much did the participant enjoy performing the task/working with the toolset?
    - confidence about solution: How confident are the participants with their solution?
    - quantification: Likert/ordinal scales
  - Cognitive empathy with the system (questionnaire):
    - How easy was it for you to understand the system to analyze?
    - quantification: Likert/ordinal scale

- **Statistical hypotheses:** <a name="statistical-hypotheses"></a>
  - Programming experience/cognitive empathy:
    - For each measure (tooling satisfaction, solution confidence, subjective efficiency, cognitive empathy):
      - **Null hypothesis:** The expected value for the \<measure\> of programmers in the experimental condition does not significantly deviate from the expected value for programmers in the control conditions.
      - **Alternative hypothesis:** The expected value for the \<measure\> of programmers in the experimental condition significantly deviates from the expected value for programmers in the control conditions.
      - **Statistical test:** ANOVA
  - Sonic affinity:
    - **Null hypothesis:** Within the experimental group, the expected values for the efficiency, comprehension, and experience (conflated into a single score) of programmers do not show any significant correlation to their sonic affinity.
    - **Alternative hypothesis:** These expected values do show a significant correlation to the programmers‘ sonic affinity.
    - **Statistical test:** Correlation analysis

*Data collection: Every participant is assigned a unique ID. To fight the experimenter/interviewer bias, they are asked to turn off their screen while completing the questionnaires.*

## Recruitment announcement

Neurodesign:

> Dear Sonic Thinkers/fellow students,
>
> do you like **Squeak** and are curious to discover a novel use case of sounds? Then I would like to invite you to **participate in a user study** that I am running in this semester to **evaluate the use of auditory displays in programming!**
>
> The study will take **approx. 2 – 3 hours** and we can offer you a compensation of **€ 30.** You are able to participate if you have fundamental programming proficiency and prior experience with Squeak/Smalltalk. If you are interested, please comment or DM me and we can find an individual time slot for a Zoom session. As it is challenging for me to find enough participants, I would also appreciate it if you could share this invitation with other possibly interested people (contact: christoph.thiede@student.hpi.de).
>
> Looking forward to see many of you in the study! :-)

SWA:

> Liebe Squeaker,
>
> im Rahmen eines Neurodesign-Projekts führe ich dieses Semester eine kleine User Study zum Thema **Auditory Displays in Programming** durch und suche dafür noch nach Teilnehmern. Das Ganze wird ca. **2 – 3 h** dauern und ihr habt die Gelegenheit, einen interessanten Prototypen kennenzulernen und euch **30 €** zu verdienen. Bei Interesse meldet euch bitte gerne bei mir (hier auf Slack oder christoph.thiede@student.hpi.de), dann können wir einen individuellen Termin für eine Zoom-Session vereinbaren. Da Teilnehmer rar sind, könnt ihr diese Einladung auch gerne an weitere Squeaker verteilen. ;-)
>
> Ich freue mich schon auf euch! :-)

infoschleuder@hpi.de:

> ### Teilnehmer gesucht: Vergütete Nutzerstudie zum Thema Auditory Displays in Squeak
>
> Liebe Mitstudierende,
>
>
> ihr könnt Squeak und habt Lust, einen ungewöhnlichen Programmieransatz näher kennenzulernen? Dann möchte ich euch herzlich einladen, an meiner kleinen Nutzerstudie zum Thema **Auditory Displays in Programming** teilzunehmen! Diese wird ca. **2 – 3 h** dauern und über Zoom stattfinden, als kleines Dankeschön erhaltet ihr außerdem **30 €.** Bei Interesse meldet euch einfach bei mir, dann können wir einen individuellen Termin vereinbaren. Über eure Teilnahme würde ich mich sehr freuen, um so ein aussagekräftiges Studienergebnis zu erzielen. :-)
>
> Wir sehen uns!
> Christoph

## Procedure script

### 1. Study introduction [10 min]

1. *The goals of this study are … (see [above](#research-questions)). We would like to ask you to perform some tasks in Squeak – with our prototype as well as with different tools for comparison –, monitor you while working with them, and ask you some questions in-between and afterwards. Please note that perhaps not all tasks are solvable. This will take about <var>3</var> hours. As a compensation, you will receive <var>30 €</var>.*

2. Test against inclusion criteria

3. Informed consent: *Would you like to participate in this study?*

4. Assign unique ID to participant, send it link to questionnaire, and ask the participant to enter the ID and answer the initial question:

   *From your first impression, how promising would you deem the idea of using sounds in programming?* (<abbr title="4-point Likert scale">4PL</abbr>: very hopeless, rather hopeless, rather promising, very promising)

5. *Open the provided image and share your screen (including audio).*

### 2. Prototype introductions and task processing [3x]

for each [condition](#prototype-introductions)–[task](#tasks) association:

#### 2.1 Prototype introduction

- theoretical background
- demo with theoretical example (`SonyxSimpleDemo`)
- provide an infographic for reference
- training:
  - let the participant try out the prototype in an unmonitored training exercise (`SonyxTaskDemoMorph`)
  - make sure they end with the correct solution
  - *You can later refer to this demo again for reference purposes.*

#### 2.2 Task processing

- short introduction into the task [5 min]
  - define problem and goal
  - describe the intended methodic starting point (i.e., *use Transcript logging* or *create sound probes for these variable*)
  - *We ask you to use particular tools, please do not use different tools than instructed. Your image has been prepared to restrict your tool choice. Do not use breakpoints or halts.*
  - assure the task was understood

- hand control to participant [30 min]
  - turn camera off, keep screen share on
  - time-limited
  - *Say hello when you think you are done.*

- monitor during task solving
  - time until success/no success
  - different approaches tried/top-down vs bottom-up approach
  - final solution

- retrospective task interview (questionnaire) [5 min]

  - *My purpose as a researcher is to learn as much as possible about the prototypes. This includes a better understand of problems, doubts or nuisances that you experience when working with the prototypes. So please try to be honest rather than polite.*

  1. confidence about solution: *How confident do you feel about the correctness [and quality] of your answers/solution?* (4PL: very unsure, rather unsure, rather sure, very sure)
  2. programming efficiency: *How efficient did you consider your workflow with the provided tools while performing this task?* (4PL: not efficient at all, rather not efficient, rather efficient, very efficient)
  3. programming experience: *How much fun did you have performing the task while working with the provided tools?* (4PL: no fun at all, rather no fun, some fun, very much fun)
  4. cognitive empathy: *How easy did you find it to comprehend the logic behind the program that you have analyzed?* (4PL: very hard, rather hard, rather easy, very easy)

- offer a short break

### 3. Open discussion (oral) [10 min]

- open questions about the <u>approach</u>:
  - strengths: *For which kind of problems do you think it is useful?*
  - weaknesses: *For which kind of problems do you think it is rather not useful?*
  - *Of which other use cases for sonyx could you think?*
  - *Was there a recent programming problem where you would have liked to use it?*
- open questions about the <u>prototype</u>:
  - advantages: *What made the tool helpful/convenient for you?*
  - disadvantages: *What were the largest drawbacks of the tool for you?*
  - improvement potential: *How could we make the tool more convenient for you to use?*

### 4. Debriefing interview [10 min]

- questionnaire:
  - \<note: moved to the end of the study to avoid expectation bias\>
  - basic demographic data
    - age (k-anonymized into $3\mathbb{N}$)
    - gender (m/f/d/don‘t say)
    - education degree:
      - last grade on completion of studies
      - number of completed semesters in IT programs (k-anonymized into $3\mathbb{N}$)
  - prior programming experience
    - ~~inspiration: https://www.cs.cmu.edu/~ckaestne/pdf/icpc12.pdf~~
    - *How many years of programming experience do you have?* ($[0, 1] \cup \mathbb{N}$)
    - *How many years of experience with object-oriented programming do you have?* ($[0, 1] \cup \mathbb{N}$)
    - *How many years of experience with Squeak/Smalltalk do you have?* ($[0, 1] \cup \mathbb{N}$)
    - *In which of the following programming languages would you feel proficient to start a professional project?* (multiple choice)
      - Python, Java/Kotlin, JavaScript/TypeScript, C#, C/C++, Swift, Go, Rust, Ruby, Haskell, Squeak/Smalltalk, one other, multiple others
  - sonic affinity
    - auditory learning: *You are memorizing a sheet with lots of vocabulary. What learning techniques do you prefer (read them, listen to recordings of them, watch images of them)? Answer for your range for the listening technique!* (<abbr title="5-point Likert scale">5PL</abbr>: definitely not, rather not, neutral, rather yes, definitely yes)
    - *Would you consider yourself a musical person?* (5PL: definitely not, rather not, neutral, rather yes, definitely yes)
  - prototype and approach
    - *After meeting the sonyx prototype, how promising do you deem the idea of using sounds in programming?* (4PL: very hopeless, rather hopeless, rather promising, very promising)
    - *How convenient did you find the sonyx prototype?* (4PL: very inconvenient, rather inconvenient, rather convenient, very convenient)
    - *How convenient did you find each of the following aspects of the sonyx prototype?* (<var>n</var>x4PL: very inconvenient, rather inconvenient, rather convenient, very convenient)
      - system browser integration, sound configuration, sound monitor
    - *How hard did you find it to get started with the sonyx prototype?* (4PL: very hard, rather hard, rather easy, very easy)
    - *How often would you use a fully developed tool for this approach in your favorite IDE (assuming you were a full-time programmer)?* (5PL: never, at least once per month, at least once per week, at least once per day, at least once per hour)
  - *Do you have any other thoughts that you would like to share with us (free text field)?*
- further questions by participants
  - wanna see a bonus? -> `SonyxDemoContext`

## Prototype Introductions

### Sonyx prototype

- theoretical background: make program behavior hearable, create sound probes in any method, customize them to listen to particular state
- demo with theoretical example (`SonyxSimpleDemo`)
  - how to add sound probes
  - how to trigger/toggle/remove sound probes
  - how to customize sounds
  - sound monitor
  - use delays (`1 second wait`)
- provide an infographic for reference
- training exercise (`SonyxTaskDemoMorph`):
  - sonify every mouse movement/click over the morph
  - make the sound pitch dependent on the position of the event
  - run the sound in the background
  - play one sound for each mouse button (`SonyxSoundSequence`, `#from:to:` & `#into:to:`)

### RVV prototype

- theoretical background: make program behavior visible, create watches in any method to see events or data
- demo with theoretical example (`SonyxSimpleDemo`)
  - how to add watches
  - how to trigger/remove watches
  - how to customize watches (event LED, ratio LED, LED strip)
  - use delays (`1 second wait`)
- provide an infographic for reference
- training (`SonyxTaskDemoMorph`):
  - visualize every mouse movement/click over the morph
  - visualize every mouse button separately (LED strip, `#from:to:` & `#into:to:`)

### Control condition

No further introductions.

## Tasks

### 1. Inefficient client component (sonyx vs logging)

**Context (`SonyxTaskIssueServer`):**

- a server-client application for accessing GitHub issues
- an interface that provides requests against the server component to the client component (`SonyxTaskIssueServer`)
- a client component that accesses the interface and provides a UI (`SonyxTaskIssueBrowser`)
  - functionality: add, rename, lock/unlock, remove, edit content
- challenges:
  - Transcript is hard to use because of other logging sources
  - Senders/implementors and breakpoints are not available. Do not use halts!
- *Note: All stepping buttons in the debugger have been made equally slow so you cannot rely on the speed of a single step.*

**Problem:**

- The client component is very slow (using the buttons, selecting an issue, or changing the contents of an issue).

**Task:**

- *<u>Identify</u> two reasons in these two classes why the issue browser is unnecessarily slow.*

- brainstorm: *How <u>would</u> you resolve these bottlenecks?*

- if sonyx: *Start by creating a sound probe in the interface requests. Play around with the UI and debug a UI operation.*

- if rvv: *Start by creating a watch in the interface requests. Play around with the UI and debug a UI operation.*

- if control: *Start by inserting `Transcript` sends in the interface requests. Play around with the UI and debug a UI operation.*

- info: There is the „debug button action“ feature:

  <img src=".\study-design.assets\debugActionInvocation.png" style="zoom:50%;" />

**Expected result:**

- identified:
  - redundant queries to the `#issues` endpoint
  - redundant re-selection after save contents
- elimination strategies:
  - use caches for the queries
  - use an alternative toolbuilder interface

**Possible solution strategies:**

- sonyx:
  - use the application and listen to request sounds
  - debug a UI operation and listen to request sounds (binary search)
- rvv:
  - debug a UI operation and watch visualization
- control condition:
  - debug a UI operation and watch log output
  - read code for a UI operation (bottom-up)

**Grading schemes:**

- Success (each 2 points):
  - redundant requests to `#issues` endpoint
  - redundant `#issues` request after each selection
  - solution approach: cache issues in client
- Method:
  - (+1) ask the right question: which requests are made to the server how often?
  - (+1) technique: narrow down problem by debuggin/modifying behavior/runtime state
  - (-1) search on wrong tracks (irrelevant packages)

### 2. Bottleneck in regular expression (sonyx vs simplification)

**Context (`SonyxRegexTask`):**

- a regular expression
- a large set of strings to match

**Problem:**

- *As we have noticed in a larger-scale application context, the regular expression is very slow.*

**Task:**

- *<u>Identify</u> one bottleneck in this regular expression and <u>resolve</u> it. <u>Explain</u> the bottleneck and your solution!*
- if sonyx or rvv: *Use a given tool to sonify string accesses (`aString as: SonyxTaskString`).*
- provide regex cheat sheet

**Expected result:**

- the regex engine has quadratic complexity for lookbehind expressions in the pattern
- rewrite with a capture group instead of the lookbehind
- alternatively, the regex engine could be optimized

**Possible solution strategies:**

- sonyx:
  - sonify advancing of matching string access positions with variable pitch
  - simplify regex/alter match strings/intuition
- rvv:
  - visualize advancing of matching string access positions with variable color
  - simplify regex/alter match strings/intuition
- control condition:
  - simplify regex/alter match strings/intuition and measure time
  - debug the regex engine (complex)
  - log string access positions (lots of data)

**Grading scheme:**

- Success (each 2 points):
  - lookbehind expression is slow
  - lookbehind expression uses backtracking
  - solution approach: replace by simple capture group
- Method:
  - rvv binary strip
  - exchange/remove loookaround
  - exchange/remove/reorder other parts of regex
  - replace lookaround by simple group
  - debug into wrong parts
  - vary input string

### 3. Understanding a sorting function (sonyx vs reading)

**Context (`SonyxTaskSorter`):**

- a sorting function
- example invocation

**Problem:**

- *The sorting method is undocumented and hard to understand.*

**Task:**

- *<u>Understand</u> how the sorting function works, i.e., what the underlying algorithm is.*
- brainstorm: *What properties can you derive from the choice of this algorithm?*
- the method already contains an assertion
- if sonyx: *Add sound probes to the method to listen to relevant parts of the collection.*
- if rvv: *Add watcher to the method to visualize how the collection is sorted.*
- if no sonyx: *Read or debug the code to understand it.*

**Expected result:**

- merge sort/divide and conquer/inline
- is stable

**Possible solution strategies:**

- sonyx:
  - sonify current order of items
- rvv:
  - visualize current order of items
- control condition:
  - reading/theoretical debugging
  - debugging

**Grading scheme (each 3 points):**

- divide and conquer/top-down
- merge sort
- Method:
  - analyze variable meanings
  - analyze control flow/program slices
  - watch array changes
  - inputs: sorted, reverse-sorted, large

## Literature

- Andrew J. Ko, Thomas D. LaToza, and Margaret M. Burnett. *[A practical guide to controlled experiments of software engineering tools with human participants.](https://dl.acm.org/doi/10.1007/s10664-013-9279-3)* In *Empirical Software Engineering*, volume 20, number 1, 2015 (pp. 110-141).
- Patrick Rein and Robert Hirschfeld. *Pre-Study Report on a Controlled Experiment on the Moderation Effect of Task Complexity on the Effects of Exploratory-style Live Programming Tools.* Hasso Plattner Institute, 12 pages, not yet published.
- Lassmann, P. [*Die Aufmerksamkeit des Fahrers (Driver Attention) – SAE L2.*](https://tangoversuch1.files.wordpress.com/2020/10/03_aufmerksamkeit_des_fahrers_l2_v03.pdf) Presentation at the Closing Event of the [TANGO project](https://projekt-tango-trucks.com/publikation/) (*Technologie für automatisiertes Fahren nutzergerecht optimiert*, *Technology for autonomous driving, optimized to user needs*). University Stuttgart, Germany, 2020-09-18.
- [RVV] Luc Prestin: [Runtime Value Visualizations.](https://github.com/hpi-swa-teaching/live21-value-visualization) Prototype from the [Live Programming '21 Project Seminar](https://hpi.de/studium/im-studium/lehrveranstaltungen/it-systems-engineering-ma/lehrveranstaltung/sose-21-3179-live-programming.html) of the Software Architecture Chair, Hasso Plattner Institute, 2021.
- \<see [previous slides](https://github.com/LinqLover/sonyx/wiki/Material#project-slides-for-the-sonic-thinking-seminar)\>

## Preparation checklist

- [x] Management
  - [x] decide on height of compensation – € 30
  - [x] write recruitment announcement
  - [x] revise/elaborate questions
  - [x] create Google Forms questionnaire
- [x] Planning
  - [x] create statistical hypotheses
  - [x] define time limits for tasks – 30 min each
  - [x] make total time estimation – 2:45
- [x] Demo
  - [x] collect ideas for training exercise
  - [x] create infographic/cheat sheet for Sonyx
  - [x] create/find cheat sheet for regex
- [x] Image
  - [x] create simple theoretical example
  - [x] one project per task $\times$ condition
  - [x] for all tasks: add jamming `Transcript` sources
  - [x] for task 1: make all debugger steps equally slow
  - [x] for task 1: turn off senders/implementors and breakpoints
  - [x] for task 1: eliminate background processing in client
  - [x] for task 2: improve `SonyxDemoStream` API or replace it by a `SonyxDemoSequence`
  - [x] for task 3: implement obfuscated iterative merge sort with assertions
  - [x] for task 3: create examples for `SonyxSound[Sequence]`
  - [x] create RVV visualization
- [x] Sessions (after recruitment is done)
  - [x] assign numbers
  - [x] plan timeslots

