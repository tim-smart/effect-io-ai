# firstSuccessOf

Runs a series of effects and returns the result of the first successful one.
If none of the effects succeed, it fails with the error from the last effect.

`firstSuccessOf` allows you to try multiple effects in sequence, and
as soon as one of them succeeds, it returns that result. If all effects fail,
it returns the error of the last effect in the list. This is useful when you
have several potential alternatives and want to use the first one that works.

This function is sequential, meaning that the `Effect` values in the iterable
will be executed in sequence, and the first one that succeeds will determine
the outcome of the resulting `Effect` value.

**Important**: If the collection of effects provided to
`firstSuccessOf` is empty, it will throw an `IllegalArgumentException`
error.

To import and use `firstSuccessOf` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.firstSuccessOf
undefined

**Example**

```ts
import { Effect, Console } from "effect"

interface Config {
  host: string
  port: number
  apiKey: string
}

// Create a configuration object with sample values
const makeConfig = (name: string): Config => ({
  host: `${name}.example.com`,
  port: 8080,
  apiKey: "12345-abcde"
})

// Simulate retrieving configuration from a remote node
const remoteConfig = (name: string): Effect.Effect<Config, Error> =>
  Effect.gen(function* () {
    // Simulate node3 being the only one with available config
    if (name === "node3") {
      yield* Console.log(`Config for ${name} found`)
      return makeConfig(name)
    } else {
      yield* Console.log(`Unavailable config for ${name}`)
      return yield* Effect.fail(new Error(`Config not found for ${name}`))
    }
  })

// Define the master configuration and potential fallback nodes
const masterConfig = remoteConfig("master")
const nodeConfigs = ["node1", "node2", "node3", "node4"].map(remoteConfig)

// Attempt to find a working configuration,
// starting with the master and then falling back to other nodes
const config = Effect.firstSuccessOf([masterConfig, ...nodeConfigs])

// Run the effect to retrieve the configuration
const result = Effect.runSync(config)

console.log(result)
// Output:
// Unavailable config for master
// Unavailable config for node1
// Unavailable config for node2
// Config for node3 found
// { host: 'node3.example.com', port: 8080, apiKey: '12345-abcde' }
```

**Signature**

```ts
export declare const firstSuccessOf: <Eff extends Effect<any, any, any>>(
  effects: Iterable<Eff>
) => Effect<Effect.Success<Eff>, Effect.Error<Eff>, Effect.Context<Eff>>
```
