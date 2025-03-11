## record

Matches objects where keys are `string` or `symbol` and values are `unknown`.

**Signature**

```ts
declare const record: Predicate.Refinement<unknown, { [x: string]: unknown; [x: symbol]: unknown; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1038)

Since v1.0.0