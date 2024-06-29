# map

Returns a new schedule that maps the output of this schedule through the
specified function.

To import and use `map` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.map
```

**Signature**

```ts
export declare const map: {
  <Out, Out2>(f: (out: Out) => Out2): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R>
  <Out, In, R, Out2>(self: Schedule<Out, In, R>, f: (out: Out) => Out2): Schedule<Out2, In, R>
}
```
