# runPromiseExit

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the `Exit` state of the effect once the effect has been executed.

This method is effectful and should only be used at the edges of your
program.

Part of the `Runtime` module from the `@effect/io` package. Also known as `Runtime.runPromiseExit`.
