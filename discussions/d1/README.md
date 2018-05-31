# Discussion 1: Thanos Isn't a Rustacean
Due Thursday May 31st at 11:59:59PM

## Introduction
Thanos is taking 330 this semester and doesn’t have a
passing grade going into the final. He didn’t do this
year’s Rust project because the TAs weren’t very helpful.
He has devised a plan to discover all the TAs who don’t
know Rust and capture them all as punishment! As his
assistant, you will help him write a Ruby class
`RustIdentifier` used to identify TAs and assemble this
list.

You will write the `RustIdentifier` class in `main.rb`.
Here are the methods of this class.

* `add(name : String, knows_rust : String) ->`
* Takes in two strings, a name and if the TA knows Rust. If the name is already in the data structure it should not be added. If `know_rust` is 'Y' then the boolean `true` should be stored, if 'N' then the boolean `false` should be stored.

* `knows_not_rust() -> Array`
* Returns an array of the TAs who do not know Rust.

* `capture_tas(names : Array) ->`
* Will traverse the structure and delete any TAs in the structure whose name is in the input list names.

* `get_tas() -> Array`
* Returns an array of the TAs.
	
## Submission
You should submit a file `main.rb` containing your solution. You may submit other files, but they will be ignored during grading. We will run your solution as MiniTest test units, just as in the provided public test file.

Be sure to follow the description exactly! Your solution will be graded automatically, so any deviation from the specification will result in lost points.

You can submit your project in two ways:
- Submit your `main.rb` file directly to the [submit server][submit server] by clicking on the submit link in the column "web submission".
Then, use the submit dialog to submit your `main.rb` file directly.
Select your file using the "Browse" button, then press the "Submit project!" button. You **do not** need to put it in a zip file.
- Submit directly by executing the submission script on a computer with Java and network access. Included in this project are the submission scripts and related files listed under **Project Files**. These files should be in the directory containing your project. From there you can either execute submit.rb or run the command `java -jar submit.jar` directly (this is all `submit.rb` does).

No matter how you choose to submit your project, make sure that your submission is received by checking the [submit server][submit server] after submitting.

<!-- Link References -->

[submit server]: submit.cs.umd.edu
