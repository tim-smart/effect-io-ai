## OpSupervision

The op supervision flag determines whether or not the Effect runtime system
will supervise all operations of the Effect runtime. Use of this flag will
negatively impact performance, but is required for some operations, such as
profiling.

**Signature**

```ts
declare const OpSupervision: RuntimeFlag
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L60)

Since v2.0.0