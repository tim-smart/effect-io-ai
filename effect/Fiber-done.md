# done

A fiber that is done with the specified `Exit` value.

To import and use `done` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.done
undefined

**Signature**

```ts
export declare const done: <A, E>(exit: Exit.Exit<A, E>) => Fiber<A, E>
```
