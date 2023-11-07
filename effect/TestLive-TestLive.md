# TestLive

The `Live` trait provides access to the "live" default Effect services from
within tests for workflows such as printing test results to the console or
timing out tests where it is necessary to access the real implementations of
these services.

To import and use `TestLive` from the "TestLive" module:

```ts
import * as TestLive from 'effect/TestLive'

// Can be accessed like this
TestLive.TestLive
```
