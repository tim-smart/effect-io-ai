Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.BadArgument

Error data for an invalid argument passed to a platform API.

The error records the module and method that rejected the argument, with an
optional description and cause. It is usually wrapped in `PlatformError`.

**Signature**

```ts
declare class BadArgument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L47)

Since v4.0.0