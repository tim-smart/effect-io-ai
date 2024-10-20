# fromDotEnv

Create a dotenv ConfigProvider.

To import and use `fromDotEnv` from the "PlatformConfigProvider" module:

```ts
import * as PlatformConfigProvider from "@effect/platform/PlatformConfigProvider"
// Can be accessed like this
PlatformConfigProvider.fromDotEnv
```

**Signature**

```ts
export declare const fromDotEnv: (
  paths: string
) => Effect.Effect<ConfigProvider.ConfigProvider, PlatformError, FileSystem.FileSystem>
```
