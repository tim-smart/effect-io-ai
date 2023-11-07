# try

Imports a synchronous side-effect into a pure `Effect` value, translating any
thrown exceptions into typed failed effects creating with `Effect.fail`.

To import and use `try` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.try
```
