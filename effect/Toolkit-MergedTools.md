Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.MergedTools

A utility type which merges the tool calls of two toolkits into a single
toolkit.

**Signature**

```ts
type { [K in keyof MergeRecords<Tools<Toolkits[number]>>]: MergeRecords<Tools<Toolkits[number]>>[K]; } = SimplifyRecord<
  MergeRecords<Tools<Toolkits[number]>>
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L459)

Since v1.0.0