# ignoreLogged

Ignore any expected errors of the given `Micro` effect, returning `void`.

To import and use `ignoreLogged` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.ignoreLogged
undefined

**Signature**

```ts
export declare const ignoreLogged: <A, E, R>(self: Micro<A, E, R>) => Micro<void, never, R>
```
