alignment-prompt-confirm-delete = <1> { $v0 }</1>? This cannot be undone!
alignment-prompt-confirm-publish = <1> { $title }</1>to the home page for{ $partnerName }users.
alignment-prompt-confirm-unpublish-alignment = <1> { $title }</1>from the home page for{ $partnerName }users.
cl-docs-description-about-cl =
    <1>About the Computation Layer Language</1>
    <2>
      The Computation Layer might not look like other programming languages you're
      used to. Don't think of it as a list of commands that run one after another.
      Instead, think of it more as wiring together different pieces that are always
      kept consistent. For example, the statement "a=b+c" means "a is always the
      sum of b+c." If b or c change, that also changes a. It's a similar model to
      the way spreadsheets work. It's also similar to how the Desmos calculator
      works.
    </2>
    <3>
      Computation Layer is also very strict about data types. In Computation Layer
      scripts, numbers and strings are treated very differently. Every sink expects
      a specific type, and every source emits a specific type. If you try to pass a
      string into a sink that expects a number, it will complain. The most common
      types you'll use are:
    </3>
    <4>number</4><5>this is a floating point number, like 1, 1.4,
    -3.</5><6>string</6><7>This is a standard string, like "hello world" or
    "y=x^2"</7><8>boolean</8><9>This is the core type for conditionals (like a &lt;
    2)</9>
    <10>
      There are also a few advanced data types that you might find yourself using.
      These include, for example, <11>numberList</11> and <12>sketch</12>. We'll
      save those for later in the docs.
    </10>
    <13>General Syntax </13>
    <14>
      A script can have a few different things in it. Here's a sampling of the
      types of things that will show up in your Computation Layer scripts.
    </14>
    <15>Sinks</15>
    <16>
      Sinks are the way of injecting values into components, and always are
      followed by a ':'. For example, the "content" sink of a note lets you define
      what the note says:
    </16>
    <code-sample/><17>{ $v0 }</17><code-sample-1/><18>Variables</18>
    <19>
      You can also define variables within a script. These help you avoid repeating
      the same code over and over. Note that they look very similar to sinks, but
      they behave really differently. Careful not to confuse them! Example:
    </19>
    <code-sample-2/>
    <20>
      You can reference variables defined in other components using the "script"
      keyword.
    </20>
    <code-sample-3/><21>Sources</21>
    <22>
      A source is something that you can pull out of a component, typically some
      work a student has done, like something they typed or sketched. To use a
      source, you need to first name the component. Each component has a different
      set of sources, which are described in detail below.
    </22>
    <23>
      For example, let's say that we have an expression input, and we call it
      <24>exp5</24>. We can read things off all of its sources. For example:
    </23>
    <code-view/><25>Functions</25>
    <26>
      We have a few built-in functions for interpreting sources and converting
      between data types. One common use of a function is to interpret the
      expression that a student typed and show the appropriate message:
    </26>
    <code-sample-4/><27>Conditionals</27>
    <28>
      The Computation Layer doesn't have "if" "then" or "else." Instead we use a
      structure similar to a "switch" on other programming languages. We call it
      "when". It is a list of tests, each followed by what should happen in that
      situation, and requires a default value ("otherwise") if none of the
      conditions match.
    </28>
    <code-sample-5/>
    <29>
      Note that a "when" returns as soon as it finds a matching condition. As a
      result, when we get to the 4th condition above (n &lt; 30), we already know
      that n is at least 10 and at most 100. This might help you write shorter
      &amp; cleaner conditions.
    </29>
    <30>Working with Strings</30>
    <31>
      Sometimes you want to insert student work or computed values into a note
      component. We call this "variable interpolation." Inside of any string, you
      can write ${variable} where variable is some defined value, and the
      Computation Layer swaps in the value of that variable. You can combine this
      with the equation feature of notes, where LaTeX wrapped in backticks renders
      as math. Here's an example of both:
    </31>
    <code-sample-6/><32>Debugging</32>
    <33>
      Before we explore what each component can do, let's talk about a few visual
      indicators designed to keep you and your scripts happy.
    </33>
    <34>When a component has a script, the gear is teal. Otherwise it's gray.</34>
    <35>
      <36/><37/>
    </35>
    <38>When something goes wrong, we'll display a warning.</38>
    <39>
      <40/><41/>
    </39>
    <42>
      You can learn more about most errors by opening the script and hovering over
      the orange triangles, or a bit of underlined text.
    </42>
    <43>
      <44/><45/>
    </43>
    <46>
      Whether you give two components the same name, forget to name a component
      altogether, or introduce some other error inside the script itself, use these
      visual indicators to get back on track. If you find yourself making a
      particular mistake fairly often and it doesn’t trigger a helpful error
      message, let us know.
    </46>
cl-docs-description-action-button-capture =
    Sets a variable you want to capture every time the action button is pressed.
    (Retrieve the history of that variable later using the history source.)
cl-docs-description-action-button-disabled =
    Sets a Boolean that determines when the action button is disabled or enabled.
    (When it's disabled, we gray out the button and make it unpressable.)
cl-docs-description-action-button-label = Sets the text to show on the button. Keep it short.
cl-docs-description-action-button-press-count = Gets the number of times the action button has been pressed.
cl-docs-description-action-button-reset-label = Sets the link text we'll show that lets the student reset the action button.
cl-docs-description-action-button-style =
    Sets the button style. Use "default" for our standard blue style. Red can be
    used e.g. for a warning or for a confirmatory second click.
cl-docs-description-action-button-time-since-press =
    Gets the seconds (plus milliseconds) since the "Submit" button was pressed. It
    resets to zero if the "reset" link is pressed, or if a component on the same
    page is focused or edited. By default, it runs to 10 seconds and then stops.
    Increase that time by passing a parameter, as in timeSincePress(20).
cl-docs-description-button-history =
    Gets the last value captured for a variable that was defined using the
    "capture" sink.
cl-docs-description-button-last-value = Gets the history of a variable that was defined using the "capture" sink.
cl-docs-description-button-submit-count = Gets the number of times the input has been submitted.
cl-docs-description-cardsort-matches-key =
    Returns whether response matches the answer key. If no answer key provided,
    returns false
cl-docs-description-cardsort-total-cards = Number of cards in the Card Sort.
cl-docs-description-cardsort-total-correct =
    Number of cards correctly sorted according to the answer key Notes: (1) cards
    that are supposed to be on their own are marked correct when on their own). (2)
    cards correctly sorted into an incomplete group count as correct. (3) cards in
    a group where any card is wrong are all counted as wrong. 
cl-docs-description-challenge-background = specify a thumbnail image of the challenge.
cl-docs-description-challenge-bounds =
    Set the bounds of the challengeBackground. Required when challengeBackground is
    specified!
cl-docs-description-challenge-prevent-challenge-creation-reason =
    Has the challenge creator correctly set up their challenge? Warning if not,
    empty string if so.
cl-docs-description-challenge-prevent-submission-reason =
    Can the student submit this challenge? Provide an error message if not, empty
    string if so.
cl-docs-description-challenge-repsonse-bounds =
    Set the bounds of the responseBackground. Required when responseBackground is
    specified!
cl-docs-description-challenge-response-background = specify a thumbnail image of the response.
cl-docs-description-challenge-response-text = specify text to display on a thumbnail of the challenge or response.
cl-docs-description-challenge-text = specify text to display on a thumbnail of the challenge or response.
cl-docs-description-correctness-correct =
    Sets a Boolean value that determines whether or not a gray checkmark is
    displayed for the student's screen in the summary view of the dashboard.
cl-docs-description-correctness-read-only =
    Sets a Boolean value that determines whether or not a component will be ignored
    when determining a screen's correctness. If all components have a readOnly
    value of "true," we display a dash for the student's screen in the summary view
    of the dashboard, indicating teachers can focus their efforts elsewhere.
cl-docs-description-correctness-warning =
    Sets a string that is displayed as a tooltip in the teacher dashboard attached
    to a warning icon.
cl-docs-description-data-collection-button-label = Sets the text to show on the button. Keep it short.
cl-docs-description-data-collection-button-style = Sets the button style. Use "default" for our standard blue style. 
cl-docs-description-data-collection-is-class-data = Answers whether or not the class-collected data was locked in.
cl-docs-description-data-collection-is-locked-in = Answers whether or not the dataset has been "locked in" by the teacher.
cl-docs-description-data-collection-is-stock-data = Answers whether or not the stock data was locked in.
cl-docs-description-data-collection-submitted-by-me =
    A list, the same length as the locked-in dataset, whose Nth value is 1 if the
    Nth row was submitted by the current student, and 0 otherwise.
cl-docs-description-data-collection-variable-sink = Sets a variable to capture from each iteration.
cl-docs-description-data-collection-variable-source =
    Gets the values for the given dataset variable, either from class or stock
    data, depending on which one the teacher "locked in".
cl-docs-description-expression-input-capture =
    Sets a variable you want to capture every time the expression input is
    submitted. (Often times this is the numeric value of the expression input.)
    Retrieve the history of that variable later using the history source.
cl-docs-description-expression-input-clear-on-reset = If true, when the user goes to edit their expression, we'll clear the prior one
cl-docs-description-expression-input-disable-evaluation = Never show evaluated user-input on student side
cl-docs-description-expression-input-error-message =
    An error to show to the student. Note: this will not show up in the teacher
    dashboard (use the "warning" sink to show warnings to the teacher).
cl-docs-description-expression-input-explain-content = Content of the "explain" text-box
cl-docs-description-expression-input-explain-prompt =
    Sets a string that replaces the generic "Explain your thinking." prompt on the
    text input when students are asked to explain their answer.
cl-docs-description-expression-input-initial-latex = Sets the initial value of the expression input. Should be a valid LaTeX string.
cl-docs-description-expression-input-initial-text =
    Sets the initial value of the text input when students are asked to explain
    their thinking.
cl-docs-description-expression-input-latex =
    Gets the LaTeX string of the input, which is useful for importing into the
    graphing calculator, the note, and other components.
cl-docs-description-expression-input-numeric-value =
    Gets the evaluated value of an expression input. For example, "2+2" will return
    the number 4.
cl-docs-description-expression-input-reset-label = Specify a label for the reset link.
cl-docs-description-expression-input-show-explain = Should we ask students to explain their answer?
cl-docs-description-expression-input-submit-disabled =
    Disable the submit button. Note: even if set to false, the input button will be
    disabled if the input is empty.
cl-docs-description-expression-input-submit-label = Specify a label for the submit button.
cl-docs-description-expression-input-submitted =
    Gets a Boolean value that indicates whether or not the expression input has
    been submitted.
cl-docs-description-expression-input-suffix =
    Adds a suffix to everything entered by the student. Recommended for inputs that
    expect a certain unit (e.g. ft) or for percents (use '%')
cl-docs-description-expression-input-time-since-submit =
    Gets the seconds (plus milliseconds) since the the expression input was
    submitted. It resets to zero if the student focuses into the input again.
    Increase that time by passing a parameter, as in timeSincePress(20)
cl-docs-description-functions =
    <1>{ $v0 }</1>
    <2>
       This is a list of available functions. If you have any questions or
      suggestions, let us know at <3>the CL community board</3>.
    </2>
cl-docs-description-graph-animation-duration =
    Adds an animation playhead on top of the graph, as if it were a video. This
    sets the duration for the animation. A non-positive value hides the playhead.
    Note: only works with graph exhibits.
cl-docs-description-graph-animation-time =
    Gets the position of the animation playhead. Use in conjunction with
    animationDuration.
cl-docs-description-graph-audiotrace-reverse =
    Specifies whether expressions are traversed in reverse order when audio trace
    is active. This behavior may be desired in situations where the curves you wish
    a student to examine are declared at the end of the calculator's expression
    list so that they appear in the foreground.
cl-docs-description-graph-background = Sets the background layer of the graph.
cl-docs-description-graph-bounds-sink =
    Sets the bounds of the graph. Commonly used in combination with the
    "background" sink. This overrides user interaction, so we caution against using
    it with fullscreen graphs.
cl-docs-description-graph-bounds-source = Gets the bounds of a graph component.
cl-docs-description-graph-label-latex = Gets the inner latex content from a point label, based on the name of the point
cl-docs-description-graph-label-numeric-value = Evaluates to content of a point label, based on the name of the point
cl-docs-description-graph-label-text = Gets the content from a point label, based on the name of the point
cl-docs-description-graph-narration =
    Text which users of screen readers will hear read aloud-- similar to image alt
    text. Narration can be used to describe a graph or sketch, e.g. narration: "The
    graph shows a plot of time studied (in hours) on the X axis and test scores on
    the Y axis." One may also include multiple narrations for a graph to separate
    pieces of information from one another, e.g. narration(1): "A description of
    the graph's main characteristics would go here." narration(2): "The line does
    not pass through all of the points." In the above example, narration(2) could
    change as the student interacted with the activity without needing to modify
    the graph description in narration(1). Separating narrations also minimizes the
    amount of text a screen reader needs to speak.
cl-docs-description-graph-number-list-sink =
    Sets a variable in the calculator to the contents of a list. This will override
    any existing definitions of that variable.
cl-docs-description-graph-number-list-source = Gets the list of numbers that was assigned to the variable in the graph.
cl-docs-description-graph-number-sink =
    Sets the value of a variable in the calculator. This will override any existing
    definitions of that variable.
cl-docs-description-graph-number-source = Gets the numerical value of a variable in the graph.
cl-docs-description-graph-raw-expression =
    Adds an expression that's exactly the latex provided. Warning: use this with
    caution! It's very brittle.
cl-docs-description-graph-raw-expression-color =
    Sets color for an expression, to be used in parallel with rawExpression. Note:
    this will only work if there is a rawExpression with the same identifier.
    Warning: use this with caution!!! It`s very brittle.
cl-docs-description-graph-raw-expression-hidden =
    Sets the hidden property for an expression, to be used in parallel with
    rawExpression. Note: this will only work if there is a rawExpression with the
    same identifier. Warning: use this with caution!!! It's very brittle.
cl-docs-description-graph-raw-expression-point-label =
    Sets a label for a point. This only works for points defined like A=(1,2), and
    the identifier needs to match the name given to the point (A in this case).
    Takes a string. The label next to the point exactly matches the provided
    string, so the label is turned off if the empty string is provided. If needed,
    we can add a separate sink for pointLabelVisible which would be read at the
    same time, similar to how expressionVisible works.
cl-docs-description-graph-raw-expression-style =
    Sets the style property for an expression, to be used in parallel with
    rawExpression. Note: this will only work if there is a rawExpression with the
    same identifier. For lines, options are: "SOLID", "DOTTED", and "DASHED". For
    points, options are "POINT", "OPEN", and "CROSS". Warning: use this with
    caution!!! It's very brittle.
cl-docs-description-graph-trace =
    Allow tracing curves to inspect coordinates, and showing point coordinates when
    clicked.
cl-docs-description-graph-x-axis-label =
    Sets the string we display along the x-axis. This overrides any user
    interaction, so we caution against using it with fullscreen graphs.
cl-docs-description-graph-xmax = Sets xmax for the graph (all four bounds must be set to take effect)
cl-docs-description-graph-xmin = Sets xmin for the graph (all four bounds must be set to take effect)
cl-docs-description-graph-y-axis-label =
    Sets the string we display along the y-axis. This overrides any user
    interaction, so we caution against using it with fullscreen graphs.
cl-docs-description-graph-ymax = Sets ymax for the graph (all four bounds must be set to take effect)
cl-docs-description-graph-ymin = Sets ymin for the graph (all four bounds must be set to take effect)
cl-docs-description-hidden = When true, this component will not be shown to students. Use with care.
cl-docs-description-image-alt-text =
    Sets the string which will be read by screen reading software. Only useful in
    conjnuction with internalImagePath. 
cl-docs-description-image-alt-text-deprecation =
    Do not use this sink outside of Desmos HQ! Use the altText input on the
    component instead.
cl-docs-description-image-internal-image-path =
    Hash for an image hosted at https://uploads.desmos.com/activitybuilder/ (just
    what follows the hash)
cl-docs-description-image-internal-image-path-deprecation = Do not use this sink outside of Desmos HQ!
cl-docs-description-mc-choice-content =
    Sets the content for a given multiple choice option, indexed starting with 1.
    (This only works if the multiple choice option at this index includes some
    content already.)
cl-docs-description-mc-explain-content = Content of the "explain" text-box
cl-docs-description-mc-explain-prompt =
    Sets a string that replaces the generic "Explain your thinking." prompt on
    "explain" multiple choice components.
cl-docs-description-mc-initial-text = Sets the initial value of the text input for explain type multiple choice.
cl-docs-description-mc-is-selected =
    Gets a Boolean that describes whether or not a particular multiple choice
    option has been selected, given the index of that option, starting with 1. This
    works for explain, simple, or multi-select multiple choice components.
cl-docs-description-mc-multi-select-heading =
    Sets the prompt at the beginning of multiSelect. If blank, no prompt will show
    up. If this sink is unused, we'll use the default text: "(Select all that
    apply)" 
cl-docs-description-mc-prompt =
    Sets the small italicized prompt above the choices. If blank, no prompt will
    show up. If this sink is unused and the choice type is multi-select, we will
    use the default text: "(Select all that apply)" 
cl-docs-description-mc-submit-count = Gets the number of times the multiple choice component has been submitted.
cl-docs-description-mc-submit-label = Specify a label for the submit button.
cl-docs-description-mc-submitted =
    Gets a Boolean value that indicates whether or not the multiple choice
    component has been submitted.
cl-docs-description-mc-time-since-submit = Gets the seconds (plus milliseconds) since the "Submit" button was pressed.
cl-docs-description-mc-wots = Configure WOSS as WOTS for teachers in PD activities
cl-docs-description-note-content =
    Sets the content of a note, which is very useful for creating dynamic elements
    in the note. This also overwrites any text you enter in the note itself. (We
    will display THAT text in the teacher dashboard, in the thumbnails, and in the
    teacher guide.)
cl-docs-description-ordered-list-index-of-item =
    Returns the sorted index of the item that started with the given index (indexed
    starting with 1)
cl-docs-description-ordered-list-initial-order =
    Takes a numberList of where each item should start. Accepts any numberList as
    an order (with ties leaving two items in order). e.g. [3, 1, 2] would mean that
    the first authored item should go last, the 2nd in the first slot, and the 3rd
    in the middle slot. [.25, 0, .25] would mean that the 2nd item goes first, the
    1st goes right after, and the 3rd stays 3rd. As soon as a student reorders, the
    response is locked in and this sink is ignored. 
cl-docs-description-ordered-list-item-at-index =
    Returns the starting item index of the item that's at the given index (indexed
    starting with 1)
cl-docs-description-ordered-list-item-content =
    Sets the content for a given item, indexed starting with 1. (This only works if
    the item at this index exists.)
cl-docs-description-ordered-list-matches-key = Returns whether this matches the key (if provided).
cl-docs-description-ordered-list-order = Returns a numberList of where each item currently is (indexOfItem).
cl-docs-description-ordered-list-text-at-index =
    Returns the string for the item that's at the given index (indexed starting
    with 1)
cl-docs-description-penny-widget-count = Gets the number of pennies currently in the penny dragger circle.
cl-docs-description-penny-widget-size = Gets the diameter (in inches) of the current penny dragger circle.
cl-docs-description-reset-on-change = Records the value of a string. If the value changes, the component resets.
cl-docs-description-sketch-allow-eraser =
    Sometimes you only want students to be able to clear, not erase. Set this to
    false if that's the mood you're in.
cl-docs-description-sketch-background = Sets the background of the sketch.
cl-docs-description-sketch-bounds-sink =
    Sets the bounds of this sketch. If the sketch has a graph background, it will
    be updated to match.
cl-docs-description-sketch-bounds-source = Gets the bounds of a sketch component.
cl-docs-description-sketch-current-stroke = Get a sketch object which represents the current stroke in progress.
cl-docs-description-sketch-current-x =
    Get the current x-coordinate of the mouse. Works on hover with a mouse and
    while depressed for touch.
cl-docs-description-sketch-current-y =
    Get the current y-coordinate of the mouse. Works on hover with a mouse and
    while depressed for touch.
cl-docs-description-sketch-initial-color = Sets the starting color.
cl-docs-description-sketch-initial-tool = Sets the starting tool.
cl-docs-description-sketch-narration =
    Text which users of screen readers will hear read aloud-- similar to image alt
    text Narration can be used to describe a graph or sketch, e.g. narration: "The
    graph shows a plot of time studied (in hours) on the X axis and test scores on
    the Y axis." One may also include multiple narrations for a graph to separate
    pieces of information from one another, e.g. narration(1): "A description of
    the graph's main characteristics would go here." narration(2): "The line does
    not pass through all of the points." In the above example, narration(2) could
    change as the student interacted with the activity without needing to modify
    the graph description in narration(1). Separating narrations also minimizes the
    amount of text a screen reader needs to speak.
cl-docs-description-sketch-object = Get a sketch object which represents everything drawn on this sketch.
cl-docs-description-sketch-preview-current-stroke =
    Renders the currentStroke as a thin gray line while drawing, and then performs
    mutations on mouseup (line smoothing, removes nearby points, joins with other
    curves). Defaults to true, which is recommended in general. Set to false to
    render in full color as sketching and disable mutations. 
cl-docs-description-step-subtitle = Adds a subtitle, centered and under the title for a screen.
cl-docs-description-step-title =
    Overrides the provided title with a string value. You can use string
    interpolation (e.g. "hello ${name}") and conditionals to build rich text to
    show to the user. Note: We recommend including placeholder text as the display
    content, which will appear in the miniscreen, teacher dashboard, and teacher
    guide.
cl-docs-description-table-capture = Specify a number to capture. Retrieve all such numbers with the history source.
cl-docs-description-table-cell-content-sink =
    Sets the contents of a cell, given the row index and column index of the cell.
    (Row index 1 is the first row underneath the header.)
cl-docs-description-table-cell-content-source =
    Gets the contents of a cell, given a row index and column index. (Row index 1
    is the first row underneath the header.)
cl-docs-description-table-cell-disable-evaluation =
    Disable the evaluation of math typed by the student in this cell. Only affects
    cells in math type columns.
cl-docs-description-table-cell-editable =
    Overrides all other mechanisms of deciding whether the student can edit this
    cell
cl-docs-description-table-cell-error-message =
    An error to show to the student. Note: this will not show up in the teacher
    dashboard (use the "warning" sink to show warnings to the teacher).
cl-docs-description-table-cell-has-focus =
    Gets a Boolean value that indicates whether or not the student is editing a
    cell, given the row index and column index of the cell. (Row index 1 is the
    first row underneath the header.)
cl-docs-description-table-cell-numeric-value =
    Gets the evaluated numeric value of that cell, given a row index and column
    index. (Row index 1 is the first row underneath the header.) If a student types
    "2 + 2" we will return "4".
cl-docs-description-table-cell-suffix =
    Adds a suffix to everything entered by the student. Recommended for inputs that
    expect a certain unit (e.g. ft) or for percents (use '%'). Only shows up for
    expression types of cells!
cl-docs-description-table-column-numeric-value =
    Gets the evaluated contents of each cell in a column and return it as a number
    list, given the column's index.
cl-docs-description-table-disable-row-changes =
    Sets a Boolean value that indicates whether or not the student can add or
    remove rows. Similar to fill-in-the-blank mode, but allows for existing cells
    to be edited. Highly recommended for usage with any cell specific sources.
    (e.g. cellContent or cellNumericValue.)
cl-docs-description-table-initial-cell-content =
    Sets the initial value of the cell at the row index and column index provided.
    This will unlock the cell and students can override the initial value. Note:
    should be a valid latex string if setting for a math type of cell (default)
cl-docs-description-table-max-rows = Sets the number of rows the table will display.
cl-docs-description-table-submit-button-disabled = Must be used in conjunction with submitButtonText. Disables the submit button.
cl-docs-description-table-submit-button-text =
    When set, adds a submit button with this text. Gives a timeSinceSubmit and
    submitted source. Resets automatically if the student focuses back into the
    table.
cl-docs-description-table-submitted =
    Gets a Boolean value that indicates whether or not the table component has been
    submitted.
cl-docs-description-table-time-since-submit = Gets the seconds (plus milliseconds) since the "Submit" button was pressed.
cl-docs-description-text-input-content = Gets the student input value as a string.
cl-docs-description-text-input-initial-text = Sets the initial value of the text input.
cl-docs-description-text-input-submit-label = Specify a label for the submit button.
cl-docs-description-text-input-submitted = Gets a Boolean value indicating whether or not the input has been submitted.
cl-docs-description-text-input-time-since-submit = Gets the seconds (plus milliseconds) since the "submit" button was pressed.
cl-docs-description-text-input-wots = Configure WOSS as WOTS for teachers in PD activities
cl-docs-description-transform-read-only =
    Sets a Boolean value that determines whether or not a component will be ignored
    when determining a screen's correctness. If all components have a readOnly
    value of "true," we display a dash for the student's screen in the summary view
    of the dashboard, indicating teachers can focus their efforts elsewhere.
cl-docs-description-video-time-sink = Sets the playhead time of the video (seconds).
cl-docs-description-video-time-source = Gets the current playhead time of the video (seconds).
cl-docs-message-mc-multi-select-heading-deprecation = Use prompt instead.
cl-docs-section-overview =
    <1>Overview</1>
    <2>
      Computation Layer (CL) is the tissue that connects screens and components in
      our activities, converting discrete, isolated mathematical moments into a
      richer, more coherent experience for students. CL lets you connect different
      mathematical representations, to change what students see later based on
      their earlier work, and to collect data from an entire class of students.
    </2>
    <3>
      The Activity Builder ecosystem consists of activities (like <4>Picture
      Perfect</4>), which consist of screens (like <5>this one</5>), which consist
      of components (like the graph, table, and action button on that screen).
    </3>
    <6>
      With Computation Layer, you can now attach a script to every component. The
      scripts live in these gear boxes.
    </6>
    <7>
      <8/><9/>
    </7>
    <10>
      With Computation Layer, you can access and alter the <11>sinks</11> and
      <12>sources</12> for every component.
    </10>
    <13>
      <14>Sinks</14> are the data that you set for a component. The text label on
      an action button. A variable in a graph. The text a student sees in a note.
    </13>
    <15>
      <16>Sources</16> are the data that you can extract from a component. The
      number of times the action button has been pressed. The current position of a
      point in the graph. The text the student typed into an input.
    </15>
    <17>
      Computation Layer lets you connect sinks and sources together and lets
      components talk to each other.
    </17>
cl-docs-section-overview-example =
    <1>Example: Using a student’s numeric response in a graph</1>
    <2>
      In this example, students will see graph and math input components. When
      students type a number into the math input, we want a new line with that
      slope to appear on the graph.
    </2>
    <3>
      To use the output of a component as a source (that is, to get data <4>out</4>
      of it), you first need to name the component. In this example, we want to get
      data out of the math input, so we’ll name it <5>exp1</5>. You can name your
      components anything you'd like, so long as no two components share a name!
    </3>
    <6>
      <7/><8/>
    </6>
    <9>
      Next we'll need to use CL to tell the graph to use the number the student
      typed into <10>exp1</10>. To add a CL script to a component and define its
      sinks (the preset options for configuring a component), click the gear.
    </9>
    <11>
      <12/><13/>
    </11>
    <14>
      After clicking the gear, the CL editor will open. Here's what we'd type to
      take the value from the math input <15>exp1</15> and use it to define a
      variable <16>exp1</16> in the graph. Press the Try It button to see this code
      in action!
    </14>
cl-docs-section-overview-getting-started =
    <1>Getting Started</1>
    <2>
      To start using Computation Layer to build Desmos activities simply head to
      <3>teacher.desmos.com/labs</3> and check the box for Computation Layer. Then
      hit save.
    </2>
    <4>
      <5/><6/>
    </4>
    <7>
      Computation Layer is constantly evolving. If there's a sink, a source, data
      type, or method that would help you, just ask for it on the <8>CL discussion
      board</8>. Let’s go!
    </7>
cl-docs-warning-graph-bounds-deprecation = Try using bounds instead.
cl-docs-warning-graph-function = Sets the output of simpleFunction() to a variable defined in the graph.
cl-docs-warning-graph-raw-expression-deprecation = Unsafe! Try using simpleFunction, or parseOrderedPair instead.
cl-docs-warning-hidden-deprecation = Still experimental, can break layouts
cl-docs-warning-table-submit-button-deprecation = Use an action button instead.
partner-dashboard-instructions-alignment-list =
    
    <1>
      
    <2>
        <3/>Published
    </2>  = linked on the home page for all{ $partnerName }users
    </1>
    <4>
      
    <5>
        <6/>Not Published
    </5>  = only visible to{ $partnerName-1 }admins
    </4><7>Note: </7>Only your admins ({ $adminList }) can create and edit curriculum
    alignments.
partner-dashboard-prompt-confirm-disable-account =
    <1> { $name }</1>? This user will no longer be able to log in to Desmos with
    this account.
partner-dashboard-prompt-confirm-reactivate-account =
    <1> { $name }</1>? This will restore all of their Desmos classes and work
    associated with this account.
partner-dashboard-prompt-invite-partner = <1>{ $name }. </1>Users who accept the invite will appear under "Users".
