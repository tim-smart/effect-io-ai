# tagged

Provides a tagged constructor for the specified `Case`.

Part of the `Data` module, imported from `@effect/data/Data`.

**Signature**

```ts
export declare const tagged: <A extends Case & { _tag: string }>(tag: A['_tag']) => Case.Constructor<A, '_tag'>
```
