# runPromise

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the value of the effect once the effect has been executed, or will be
rejected with the first error or exception throw by the effect.

This method is effectful and should only be used at the edges of your
program.

Part of the `Runtime` module from the `@effect/io` package. Also known as `Runtime.runPromise`.
