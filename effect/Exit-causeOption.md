# causeOption

Returns a `Some<Cause<E>>` if the specified exit is a `Failure`, `None`
otherwise.

To import and use `causeOption` from the "Exit" module:

```ts
import * as Exit from "effect/Exit"
// Can be accessed like this
Exit.causeOption
```

**Signature**

```ts
export declare const causeOption: <E, A>(self: Exit<E, A>) => Option.Option<Cause.Cause<E>>
```
