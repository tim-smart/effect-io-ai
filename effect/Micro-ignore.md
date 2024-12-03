# ignore

Ignore any expected errors of the given `Micro` effect, returning `void`.

To import and use `ignore` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.ignore
```

**Signature**

```ts
export declare const ignore: <A, E, R>(self: Micro<A, E, R>) => Micro<void, never, R>
```
