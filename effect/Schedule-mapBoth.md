# mapBoth

Returns a new schedule that maps both the input and output.

To import and use `mapBoth` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapBoth
undefined

**Signature**

```ts
export declare const mapBoth: {
  <In2, In, Out, Out2>(options: {
    readonly onInput: (in2: In2) => In
    readonly onOutput: (out: Out) => Out2
  }): <R>(self: Schedule<Out, In, R>) => Schedule<Out2, In2, R>
  <Out, In, R, In2, Out2>(
    self: Schedule<Out, In, R>,
    options: { readonly onInput: (in2: In2) => In; readonly onOutput: (out: Out) => Out2 }
  ): Schedule<Out2, In2, R>
}
```
