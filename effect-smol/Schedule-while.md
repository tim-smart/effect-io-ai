Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.while

Returns a new schedule that continues while the predicate returns `true`.

**When to use**

Use to stop an existing schedule based on its full metadata, such as the
current input, output, attempt, delay, or elapsed time.

**Details**

The predicate receives `Metadata`, may return `boolean` or an
`Effect<boolean, ...>`, preserves the output and delay when it returns
`true`, and stops the schedule when it returns `false`.

**See**

- `upTo` for stopping after a fixed number of schedule outputs

**Signature**

```ts
declare const while: { <Input, Output, Error2 = never, Env2 = never>(predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): <Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Error2 = never, Env2 = never>(self: Schedule<Output, Input, Error, Env>, predicate: (metadata: Metadata<Output, Input>) => boolean | Effect<boolean, Error2, Env2>): Schedule<Output, Input, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L2050)

Since v4.0.0