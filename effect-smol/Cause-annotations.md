Package: `effect`<br />
Module: `Cause`<br />

## Cause.annotations

Reads the merged annotations from all reasons in a `Cause`.

Annotations from later reasons overwrite earlier ones when keys collide.

**See**

- `reasonAnnotations` — annotations from a single reason
- `annotate` — attach annotations

**Signature**

```ts
declare const annotations: <E>(self: Cause<E>) => ServiceMap.ServiceMap<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1643)

Since v4.0.0