# getOrFail

Lifts an `Option` into an `Effect`, if the option is not defined it fails
with `NoSuchElementException`.

To import and use `getOrFail` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.getOrFail
```

**Signature**

```ts
export declare const getOrFail: <A>(option: Option.Option<A>) => Effect<never, Cause.NoSuchElementException, A>
```
