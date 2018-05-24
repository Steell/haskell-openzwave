module Main (main) where

import Foreign.Hoppy.Setup (ProjectConfig(..), hsMain)

main = hsMain $ ProjectConfig { generatorExecutableName = "haskell-openzwave-gen"
                              , cppPackageName = "haskell-openzwave-cpp"
                              , cppSourcesDir = "cpp"
                              , hsSourcesDir = "src"
                              }
