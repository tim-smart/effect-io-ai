# as

Maps the `Success` value of the specified exit to the provided constant
value.

To import and use `as` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.as
```

**Signature**

```ts
export declare const as: {
  <A2>(value: A2): <A, E>(self: Exit<A, E>) => Exit<A2, E>
  <A, E, A2>(self: Exit<A, E>, value: A2): Exit<A2, E>
}
```
