# fromOption

Converts an `Option<A>` into an `Exit<void, A>`.

To import and use `fromOption` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.fromOption
undefined

**Signature**

```ts
export declare const fromOption: <A>(option: Option.Option<A>) => Exit<A, void>
```
