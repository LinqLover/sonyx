# Sonyx User Study

## Research questions

- **Overarching hypothesis:** When programmers receive additional sonic feedback about runtime state and behavior from their interactive programming environment, their effectiveness and programming experience increase.
  - **Concrete hypothesis:** When proficient Squeak/Smalltalk programmers use the *sonyx* prototype, they become more effective and satisfied while solving given programming tasks.
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
  - In the **experimental condition,** participants are asked to perform given tasks with the help of sonyx. In the **control condition,** they are restricted to using the conventional Squeak/Smalltalk toolset.
  - The study is designed as a **within-subjects** user study with multiple tasks to minimize influence of confounding variables. The order of tasks is randomized.
  - The study is run in separate **one-to-one sessions.** Every participant receives comparable individual guidance by the study manager to ensure that participants approach the task within the intended frame (see [below](#taskdesign)).
- **Design of testable programming tasks:** <a name="taskdesign"></a>
  - Tasks need to be chosen as representative as possible for common programmers‘ workloads. Because of the small extent of the current prototype (see [above](#nogoals)), tasks need to be defined with a fine granularity to maximize the coverage of single solution steps by the existing prototype while ensuring comparable solution strategies that are performed by all participants.
  - To eliminate irrelevant independent variables, the overarching process for solving a programming problem is broken down into single steps (from reproducing a bug over tracing it down to a defect up to deciding on an appropriate fix). For each study task, only a single step for a given problem is observed in an experiment. In particular, the „zeroth solution step“ of choosing the right tool for a job is excluded to eliminate another unintended independent variable. This also contributes to shorten the temporal requirements to each participant.
    - *TODO RESEARCH: find related work on interaction models for programming problem solving*
  - Following prior insights about the prototype, the programming tasks will focus on the area of *program comprehension* and *defect identification*.
- **Organizational aspects:**
  - The study sessions will be scheduled between ==2021-12-13== and ==2022-01-14==.
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
  - SWT undergraduate students from summer semester 2021
  - graduate students from seminars at SWA chair
  - graduate students from seminars at Neuroscience group
- compensation via gift coupons
  - *TODO MGMT: how expensive coupons?*

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
      - For each task, a time limit is specified. – *TODO*
      - To avoid speculative expense and to mitigate the absence of a pre-pilot study, a horizon of expectation/grading scheme is not created in advance. Instead, the raw results of every participant are recorded and quantified after all results are available.
      - quantification: ordinal scale
    - time to success (chronometer): How much time did the participant need to solve the task (success is detected by study manager)?
      - quantification: ratio scale
  - Programming experience (questionnaire):
    - process and tooling satisfaction: How much did the participant enjoy performing the task/working with the toolset?
    - confidence about solution: How confident are the participants with their solution?
    - quantification: Likert/ordinal scales
  - Solution approaches (observation and record-keeping):
    - purposiveness/ramification of solution approaches: How many different approaches did the participant try out? Did they tend to select top-down or bottom-up approaches?
    - qualitative

- **Statistical hypotheses:**
  - *TODO*

*Data collection: Every participant is assigned a unique ID. To generate more honest answers, they are asked to turn off their screen while completing the questionnaires.* – *TODO QUESTION: is this „anonymization“ useful?*

## Recruitment announcement

| *TODO* |
| ------ |

## Procedure script

### 1. Study introduction [10 min]

1. *The goals of this study are … (see [above](#research-questions)). We would like to ask you to perform some tasks in Squeak, monitor you while working with them, and ask you some questions afterwards. Please note that perhaps not all tasks are solvable. This will take about <var>x</var> hours. As a compensation, you will receive a coupon after that.*
2. Test against inclusion criteria
3. Informed consent: *Would you like to participate in this study?*
4. Initial question: *How promising would you deem the idea of using sounds in programming?* (<abbr title="4-point Likert scale">4PL</abbr>: very hopeless, rather hopeless, rather promising, very promising)
   - *TODO: create google forms*

### 2. Introduction to the sonyx prototype [15 min]

- theoretical background
- demo with theoretical example
  - just a class with a few methods – *TODO: create theoretical example*
  - how to add sound probes
  - how to trigger/toggle/remove sound probes
  - how to customize sounds
  - sound monitor
- provide something like an infographic for reference
  - *TODO: create infographic*
- training: let the participant try out sonyx in an unmonitored training exercise
  - morphic events example (`SonyxDemoMorph`)
  - sonify every mouse movement/click over the morph
  - make the sound pitch dependent on the position of the event
  - run the sound in the background
  - `SonyxSoundSequence`

### 3. Task processing [3x]

for each task (see [below](#tasks)):

- short introduction into the task [5 min]
  - define problem and goal
  - describe the intended methodic starting point (i.e., *use Transcript logging* or *create sound probes for these variable*)
  - assure the tasks was understood
- hand control to participant [30 min]
  - turn camera off, keep screen share on
  - time-limited
  - *Say hello when you think you are done.*
- monitor during task solving
  - time until success/no success
  - different approaches tried/top-down vs bottom-up approach
  - final solution
- retrospective task interview [5 min]
  - programming experience: *How much fun did you have performing the task/working with the provided tools?* (4PL: no fun at all, rather no fun, some fun, very much fun)
  - confidence about solution: *How confident do you feel about the correctness and quality of your solution?* (4PL: very unsure, rather unsure, rather sure, very sure)
  - *TODO QUESTION: is this a good idea before all tasks have been done?*
- offer a short break

### 4. Open discussion [10 min]

- open questions about the <u>approach</u>:
  - strengths/for which kind of problems is it useful?
  - weaknesses/for which kind of problems is it not so useful?
  - of which other use cases for sonyx could you think?
  - was there a recent problem where you would have liked to use it?
- open questions about the <u>prototype</u>:
  - advantages: what makes the tool helpful/convenient?
  - disadvantages: what are the largest drawbacks?
  - improvement potential: how can the tool be made more convenient?

### 5. Debriefing interview [10 min]

- questionnaire:
  - *note: moved to the end of the study to avoid expectation bias*
  - basic demographic data
    - age (k-anonymized into $3\mathbb{N}$)
    - gender (m/f/d/don‘t say)
    - education degree:
      - last grade on completion of studies
      - number of completed semesters in IT programs (k-anonymized into $3\mathbb{N}$)
  - prior programming experience
    - ~~inspiration: https://www.cs.cmu.edu/~ckaestne/pdf/icpc12.pdf~~
    - *How many years of programming experience do you have?* ($\mathbb{N}$)
    - *How many years of experience with object-oriented programming do you have?* ($\mathbb{N}$)
    - *How many years of experience with Squeak/Smalltalk do you have?* ($\mathbb{N}$)
    - *In which of the following programming languages would you feel proficient to start a serious project?* (multiple choice)
      - Python, Java/Kotlin, JavaScript/TypeScript, C#, C/C++, Swift, Go, Rust, Ruby, Haskell, Squeak/Smalltalk, one other, multiple others
  - sonic affinity
    - *Would you consider yourself an auditory learner?* (<abbr title="5-point Likert scale">5PL</abbr>: definitely not, rather not, neutral, rather yes, definitely yes)
    - *Would you consider yourself a musical person?* (5PL: definitely not, rather not, neutral, rather yes, definitely yes)
  - prototype and approach
    - *After meeting the sonyx prototype, how promising do you deem the idea of using sounds in programming?* (4PL: very hopeless, rather hopeless, rather promising, very promising)
    - *How convenient did you find the sonyx prototype?* (4PL: very inconvenient, rather inconvenient, rather convenient, very convenient)
    - *How convenient did you find each of the following aspects of the sonyx prototype?* (<var>n</var>x4PL: very inconvenient, rather inconvenient, rather convenient, very convenient)
      - browser integration, sound configuration, sound watcher
    - *How hard did you find it to get started with the sonyx prototype?* (4PL: very hard, rather hard, rather easy, very easy)
    - *How often would you use a fully developed tool for this approach in your favorite IDE (assuming you were a full-time programmer)?* (5PL: never, at least once per month, at least once per week, at least once per day, at least once per hour)
  - *free text field for things you wanted to add*
- further questions by participants
  - wanna see a bonus? -> `SonyxDemoContext`

## Tasks

### 1. Inefficient client component (sonyx vs logging)

**Context (`SonyxGithubIssueServer`):**

- a server-client application for accessing GitHub issues
- an interface that provides requests against the server component to the client component
- a client component that accesses the interface and provides a UI
  - functionality: add, rename, lock/unlock, remove, edit content

**Problem:**

- The client component is very slow.

**Task:**

- *<u>Identify</u> two reasons why the client component is so slow.*

- brainstorm: *How <u>would</u> you resolve these bottlenecks?*

- if sonyx: *Start by creating a sound probe in the interface requests. Play around with the UI and debug a UI operation.*

- if no sonyx: *Start by inserting `Transcript` sends in the interface requests. Play around with the UI and debug a UI operation.*

- info: There is the „debug button action“ feature.

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
- no sonyx:
  - debug a UI operation and watch log output
  - read code for a UI operation (bottom-up)

***Pending preparation steps:***

- add other different log sources to make transcript harder to read
- make every step slow so you cannot feel complexity of a step
- turn off senders/implementors and breakpoints
- eliminate background processing in the client

### 2. Bottleneck in regular expression (sonyx vs simplification)

**Context (`SonyxDemos class >> #demoRegex`):**

- a regular expression
- a large set of strings to match

**Problem:**

- As we have noticed in a larger-scale application context, the regular expression is very slow.

**Task:**

- *<u>Identify</u> one bottleneck in this regular expression and <u>resolve</u> it.*
- if sonyx: *Use a given tool to sonify stream positions (`SonyxDemoStream`).*
- provide regex cheat sheet

**Expected result:**

- the regex engine has quadratic complexity for lookbehind expressions in the pattern
- rewrite with a closure instead of the lookbehind
- alternatively, the regex engine could be optimized

**Possible solution strategies:**

- sonyx:
  - sonify advancing of matching stream with variable pitch
  - simplify regex/alter match strings/intuition
- no sonyx:
  - simplify regex/alter match strings/intuition and measure time
  - debug the regex engine (complex)
  - log stream positions (lots of data)

***Pending preparation steps:***

- improve `SonyxDemoStream` API or replace it by a `SonyxDemoSequence`?

### 3. Understanding a sorting algorithm (sonyx vs reading)

**Context (`SonyxDemos class >> #demoSort`):**

- a sorting function
- example invocation

**Problem:**

- The sorting method is undocumented and hard to understand.

**Task:**

- *<u>Understand</u> how the sorting algorithm works. <u>Decide</u> whether the sorting is stable, i.e., equal values are not reordered.*
- the method already contains two assertions – *TODO: prepare*
- if sonyx: *Add sound probes next to the assertions to listen to relevant parts of the collection.*
  - tip: *Use `SonyxSoundSequence class >> #withAll:` and pass one `SonyxSound` for the value of every relevant collection element.*
  - tip: *There are two other similar sound probe examples available.* – *TODO: prepare*
- if no sonyx: *Read or debug the code to understand it.*

**Expected result:**

- merge sort/divide and conquer/inline
- is stable

**Possible solution strategies:**

- sonyx:
  - sonify current order of items
- no sonyx:
  - reading/theoretical debugging
  - debugging

***Pending preparation steps:***

- implement obfuscated iterative merge sort with assertions
- improve sound API – simpler delay, shorter default duration
- create similar examples for `SonyxSound[Sequence]`
- spam `Transcript`

## Threats to validity

- systematic
  - predefined tasks (control)
  - guidance of participants (control)
  - not tested: creativity of finding approach for problem solving (control)
  - no adequate runtime visualization alternative

## Literature

- Andrew J. Ko, Thomas D. LaToza, and Margaret M. Burnett. *[A practical guide to controlled experiments of software engineering tools with human participants.](https://dl.acm.org/doi/10.1007/s10664-013-9279-3)* In *Empirical Software Engineering*, volume 20, number 1, 2015 (pp. 110-141).
- Patrick Rein and Robert Hirschfeld. *Pre-Study Report on a Controlled Experiment on the Moderation Effect of Task Complexity on the Effects of Exploratory-style Live Programming Tools.* Hasso Plattner Institute, 12 pages, not yet published.
- \<see [previous slides](https://github.com/LinqLover/sonyx/wiki/Material#project-slides-for-the-sonic-thinking-seminar)\>

## Preparation checklist

- [ ] Research (deferred)
  - [ ] find related work on interaction models for programming problem solving
- [ ] Management
  - [ ] decide on height of compensation
  - [ ] write recruitment announcement
  - [ ] create Google Forms questionnaire
- [ ] Planning
  - [ ] create statistical hypotheses (deferred)
  - [ ] define time limits for tasks – 30 min each *– TODO discuss*
  - [ ] make total time estimation – 2:45 *– TODO discuss*
- [ ] Demo
  - [x] collect ideas for training exercise
  - [ ] create infographic/cheat sheet for Sonyx
  - [ ] create/find cheat sheet for regex
- [ ] Image
  - [ ] create simple theoretical example
  - [ ] one project per task $\times$ condition
  - [ ] for all tasks: add jamming `Transcript` sources
  - [ ] for task 1: make all debugger steps equally slow
  - [ ] for task 1: turn off senders/implementors and breakpoints
  - [ ] for task 1: eliminate background processing in client
  - [ ] for task 2: improve `SonyxDemoStream` API or replace it by a `SonyxDemoSequence`?
  - [ ] for task 3: implement obfuscated iterative merge sort with assertions
  - [ ] for task 3: create examples for `SonyxSound[Sequence]`
  - [ ] create RVV visualization
- [ ] Tool improvements
  - [ ] improve sound API – simpler delay, shorter default duration
  - [ ] sandblocks: remove messages end, add message send
- [ ] Sessions (after recruitment is done)
  - [ ] assign numbers
  - [ ] plan timeslots

