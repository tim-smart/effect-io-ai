Package: `effect`<br />
Module: `Filter`<br />

## Filter.instanceOf

Creates a filter that only passes instances of the given constructor.

**When to use**

Use to narrow unknown input to values created by a specific JavaScript
constructor while keeping the result in the `Filter` / `Result` pipeline.

**Details**

The filter succeeds when the input satisfies `instanceof constructor`.
Otherwise it fails with the original input.

**Gotchas**

This uses JavaScript `instanceof` semantics, including prototype-chain and
realm behavior.

**See**

- `fromPredicate` for custom predicate-based narrowing

**Signature**

```ts
declare const instanceOf: <K extends new (...args: any) => any>(constructor: K) => <Input>(u: Input) => Result.Result<InstanceType<K>, Exclude<Input, InstanceType<K>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L343)

Since v4.0.0