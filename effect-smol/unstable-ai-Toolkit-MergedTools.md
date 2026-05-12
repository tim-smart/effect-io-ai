Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.MergedTools

A utility type which merges the tools from multiple toolkits into a single
record.

**Signature**

```ts
type { [K in keyof MergeRecords<Tools<Toolkits[number]>>]: MergeRecords<Tools<Toolkits[number]>>[K]; } = SimplifyRecord<
  MergeRecords<Tools<Toolkits[number]>>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L533)

Since v1.0.0