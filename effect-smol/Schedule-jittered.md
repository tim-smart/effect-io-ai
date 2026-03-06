Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.jittered

Returns a new `Schedule` that randomly adjusts each recurrence delay.

Delays are jittered between `80%` and `120%` of the original delay.

**Signature**

```ts
declare const jittered: <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2368)

Since v2.0.0