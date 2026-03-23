Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.while

Returns a new schedule that passes each input and output of the specified
schedule to the provided `predicate`.

If the `predicate` returns `true`, the schedule will continue, otherwise
the schedule will stop.

**Signature**

```ts
declare const while: { <Input, Output, Error2 = never, Env2 = never>(predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): <Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3187)

Since v2.0.0