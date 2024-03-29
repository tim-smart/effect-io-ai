# map

Maps over the `Success` value of the specified exit using the provided
function.

To import and use `map` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Exit<A, E>) => Exit<B, E>
  <A, E, B>(self: Exit<A, E>, f: (a: A) => B): Exit<B, E>
}
```
