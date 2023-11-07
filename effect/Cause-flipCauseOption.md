# flipCauseOption

Converts the specified `Cause<Option<E>>` to an `Option<Cause<E>>` by
recursively stripping out any failures with the error `None`.

To import and use `flipCauseOption` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.flipCauseOption
```

**Signature**

```ts
export declare const flipCauseOption: <E>(self: Cause<Option.Option<E>>) => Option.Option<Cause<E>>
```
