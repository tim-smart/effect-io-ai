Package: `@effect/platform`<br />
Module: `Command`<br />

## Command.env

Specify the environment variables that will be used when running this command.

By default, the configured variables extend the parent process environment.
Set `extendEnv` to `false` to use only the configured variables.

**Signature**

```ts
declare const env: { (environment: Record<string, string | undefined>, options?: { readonly extendEnv?: boolean | undefined; }): (self: Command) => Command; (self: Command, environment: Record<string, string | undefined>, options?: { readonly extendEnv?: boolean | undefined; }): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L132)

Since v1.0.0