# try

Imports a synchronous side-effect into a pure `Either` value, translating any
thrown exceptions into typed failed eithers creating with `Either.left`.

To import and use `try` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.try
```
