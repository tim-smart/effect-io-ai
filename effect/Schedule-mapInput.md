Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.mapInput

Transforms the input type of a schedule.

**Details**

This function modifies a given schedule by applying a transformation function
to its inputs. Instead of directly receiving values of type `In`, the
schedule will now accept values of type `In2`, which are converted to `In`
using the provided mapping function `f`.

This is useful when you have a schedule that expects a specific input type
but you need to adapt it to work with a different type.

**See**

- `mapInputEffect` If you need to use an effectful transformation function.

**Signature**

```ts
declare const mapInput: { <In, In2>(f: (in2: In2) => In): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In2, R>; <Out, In, R, In2>(self: Schedule<Out, In, R>, f: (in2: In2) => In): Schedule<Out, In2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L551)

Since v2.0.0