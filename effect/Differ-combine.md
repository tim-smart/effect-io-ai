Package: `effect`<br />
Module: `Differ`<br />

## Differ.combine

Combines two patches to produce a new patch that describes the updates of
the first patch and then the updates of the second patch. The combine
operation should be associative. In addition, if the combine operation is
commutative then joining multiple fibers concurrently will result in
deterministic `FiberRef` values.

**Signature**

```ts
declare const combine: { <Patch>(first: Patch, second: Patch): <Value>(self: Differ<Value, Patch>) => Patch; <Value, Patch>(self: Differ<Value, Patch>, first: Patch, second: Patch): Patch; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L260)

Since v2.0.0