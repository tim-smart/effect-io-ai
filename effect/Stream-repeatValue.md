# repeatValue

Repeats the provided value infinitely.

To import and use `repeatValue` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.repeatValue
```

**Signature**

```ts
export declare const repeatValue: <A>(value: A) => Stream<never, never, A>
```
