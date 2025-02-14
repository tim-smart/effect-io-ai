# fromFunction

Creates a schedule that always recurs, transforming input values using the
specified function.

**Details**

This schedule continuously executes and applies the given function `f` to
each input value, producing a transformed output. The schedule itself does
not control delays or stopping conditions; it simply transforms the input
values as they are processed.

This is useful when defining schedules that map inputs to outputs, allowing
dynamic transformations of incoming data.

To import and use `fromFunction` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.fromFunction
```

**Signature**

```ts
export declare const fromFunction: <A, B>(f: (a: A) => B) => Schedule<B, A>
```
