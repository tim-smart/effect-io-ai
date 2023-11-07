# fail

A fiber that has already failed with the specified value.

To import and use `fail` from the "Fiber" module:

```ts
import * as Fiber from 'effect/Fiber'

// Can be accessed like this
Fiber.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Fiber<E, never>
```
