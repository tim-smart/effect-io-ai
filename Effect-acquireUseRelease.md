# acquireUseRelease

This function is used to ensure that an `Effect` value that represents the
acquisition of a resource (for example, opening a file, launching a thread,
etc.) will not be interrupted, and that the resource will always be released
when the `Effect` value completes execution.

`acquireUseRelease` does the following:

1. Ensures that the `Effect` value that acquires the resource will not be
   interrupted. Note that acquisition may still fail due to internal
   reasons (such as an uncaught exception).
2. Ensures that the `release` `Effect` value will not be interrupted,
   and will be executed as long as the acquisition `Effect` value
   successfully acquires the resource.

During the time period between the acquisition and release of the resource,
the `use` `Effect` value will be executed.

If the `release` `Effect` value fails, then the entire `Effect` value will
fail, even if the `use` `Effect` value succeeds. If this fail-fast behavior
is not desired, errors produced by the `release` `Effect` value can be caught
and ignored.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.acquireUseRelease`.
