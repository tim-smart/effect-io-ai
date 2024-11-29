# whileOutput

Returns a new schedule that continues for as long the specified predicate
on the output evaluates to true.

To import and use `whileOutput` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.whileOutput
undefined

**Signature**

```ts
export declare const whileOutput: {
  <Out>(f: Predicate<Out>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<Out>): Schedule<Out, In, R>
}
```
